% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/getCentroids.R
\name{getCentroids}
\alias{getCentroids}
\title{Convert an image to the geometric centroids of its signal}
\usage{
getCentroids(img, clustparam = 250, outprefix = NA)
}
\arguments{
\item{img}{the image to reduce to centroids - presumably some kind of
statistical or network map}

\item{clustparam}{look at regions greater than or equal to this size}

\item{outprefix}{prefix if you want to output to a file}
}
\value{
the centroids are output in matrix of size npoints by 3
}
\description{
Reduces a variate/statistical/network image to a set of centroids describing
the center of each stand-alone non-zero component in the image.
}
\examples{
img<-antsImageRead( getANTsRData( "r16" ) )
img<-thresholdImage( img, 90, 120 )
img<-labelClusters( img, 10 )
cents<-getCentroids( img  )
}
\author{
Avants BB
}

