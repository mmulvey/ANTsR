% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/aslDenoiseR.R
\name{aslDenoiseR}
\alias{aslDenoiseR}
\title{WIP: data-driven denoising for ASL MRI}
\usage{
aslDenoiseR(boldmatrix, targety, motionparams = NA, selectionthresh = 0.1,
  maxnoisepreds = 1:12, debug = FALSE, polydegree = 4,
  crossvalidationgroups = 4, scalemat = F, noisepoolfun = max,
  usecompcor = F)
}
\arguments{
\item{boldmatrix}{input bold matrix}

\item{targety}{target to predict}

\item{motionparams}{motion parameters / nuisance variables}

\item{selectionthresh}{e.g. 0.1 take 10 percent worst variables for noise
estimation}

\item{maxnoisepreds}{integer search range e.g 1:10}

\item{debug}{boolean}

\item{polydegree}{eg 4 for polynomial nuisance variables}

\item{crossvalidationgroups}{prior defined or integer valued}

\item{scalemat}{boolean}

\item{noisepoolfun}{function to help select noise pool e.g. max}

\item{usecompcor}{boolean}
}
\value{
matrix is output
}
\description{
Denoises regression based reconstruction of CBF from arterial spin labeling
}
\examples{
# fn<-'PEDS012_20131101_pcasl_1.nii.gz'
# asl<-antsImageRead(fn,4)
# image available at http://files.figshare.com/1701182/PEDS012_20131101.zip
set.seed(1)
nvox <- 10*10*10*20
dims <- c(10,10,10,20)
asl <- makeImage( dims , rnorm( nvox )+500 ) \%>\% iMath("PadImage" , 2 )
aslmean <- getAverageOfTimeSeries( asl )
aslmask <- getMask( aslmean , 0.001 , Inf )
aslmat<-timeseries2matrix( asl, aslmask )
for ( i in 1:10 ) aslmat[,i*2]<-aslmat[,i*2]*2
asl<-matrix2timeseries( asl, aslmask, aslmat )
tc<-as.factor(rep(c("C","T"),nrow(aslmat)/2))
dv<-computeDVARS(aslmat)
dnz<-aslDenoiseR( aslmat, tc, motionparams=dv, selectionthresh=0.1,
 maxnoisepreds=c(1:2), debug=FALSE, polydegree=4, crossvalidationgroups=8 )
nzimg<-makeImage(aslmask, dnz$R2final )
# a classic regression approach to estimating perfusion
# not recommended, but shows the basic idea.
# see ?quantifyCBF for a better approach
perfmodel<-lm( aslmat ~ tc + dnz$noiseu  )
perfimg<-antsImageClone(aslmask)
perfimg[ aslmask == 1 ]<-bigLMStats( perfmodel )$beta[1,]
m0<-getAverageOfTimeSeries(asl)
ctl<-c(1:(nrow(aslmat)/2))*2
m0[ aslmask==1 ]<-colMeans(aslmat[ctl,])
pcasl.parameters<-list( sequence="pcasl", m0=m0 )
cbf <- quantifyCBF( perfimg, aslmask, pcasl.parameters )
}
\author{
Avants BB
}

