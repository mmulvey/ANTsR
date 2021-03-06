% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/n3BiasFieldCorrection.R
\name{n3BiasFieldCorrection}
\alias{n3BiasFieldCorrection}
\title{Bias Field Correction}
\usage{
n3BiasFieldCorrection(img, downsampleFactor)
}
\arguments{
\item{img}{antsImage to correct}

\item{downsampleFactor}{integer e.g. 4 downsample by a factor of 4}
}
\value{
antsImage
}
\description{
Perform Bias Field Correction on the given image
}
\examples{
img<-makeImage(c(10,10),rnorm(100))
n3img<-n3BiasFieldCorrection(  img, 1 )
}
\author{
Shrinidhi KL
}

