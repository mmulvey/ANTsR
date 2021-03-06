% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/antsImage_class.R
\docType{methods}
\name{[,antsImage,NULL,ANY-method}
\alias{[,antsImage,ANY,ANY-method}
\alias{[,antsImage,NULL,ANY-method}
\alias{[,antsImage,NULL,NULL-method}
\alias{[,antsImage,NULL,numeric-method}
\alias{[,antsImage,logical,ANY-method}
\alias{[,antsImage,missing,missing-method}
\alias{[,antsImage,missing,numeric-method}
\alias{[,antsImage,numeric,NULL-method}
\alias{[,antsImage,numeric,missing-method}
\alias{[,antsImage,numeric,numeric-method}
\alias{[<-,antsImage,NULL,ANY,ANY-method}
\alias{[<-,antsImage,NULL,NULL,numeric-method}
\alias{[<-,antsImage,NULL,antsRegion,ANY-method}
\alias{[<-,antsImage,NULL,numeric,numeric-method}
\alias{[<-,antsImage,array,ANY,ANY-method}
\alias{[<-,antsImage,array,antsRegion,ANY-method}
\alias{[<-,antsImage,list,ANY,ANY-method}
\alias{[<-,antsImage,logical,ANY,ANY-method}
\alias{[<-,antsImage,logical,antsRegion,ANY-method}
\alias{[<-,antsImage,matrix,ANY,ANY-method}
\alias{[<-,antsImage,matrix,antsRegion,ANY-method}
\alias{[<-,antsImage,numeric,NULL,numeric-method}
\alias{[<-,antsImage,numeric,numeric,numeric-method}
\alias{as.antsImage}
\alias{as.antsImage,array-method}
\alias{as.antsImage,matrix-method}
\title{as.antsImage}
\usage{
\S4method{[}{antsImage,`NULL`,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,`NULL`,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,logical,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,logical,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,ANY,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,ANY,ANY}(x, i, j, ..., drop = TRUE)

\S4method{[}{antsImage,`NULL`,`NULL`}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,`NULL`,`NULL`}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,numeric,numeric}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,numeric,numeric}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,numeric,`NULL`}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,numeric,`NULL`}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,`NULL`,numeric}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,`NULL`,numeric}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,missing,numeric}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,numeric,missing}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,missing,missing}(x, i, j, k = NA, l = NA, ..., drop)

\S4method{[}{antsImage,`NULL`,ANY,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,logical,ANY,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,array,ANY,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,matrix,ANY,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,list,ANY,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,`NULL`,antsRegion,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,logical,antsRegion,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,array,antsRegion,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,matrix,antsRegion,ANY}(x, i, j, ...) <- value

\S4method{[}{antsImage,`NULL`,`NULL`,numeric}(x, i, j, ...) <- value

\S4method{[}{antsImage,numeric,numeric,numeric}(x, i, j, ...) <- value

\S4method{[}{antsImage,numeric,`NULL`,numeric}(x, i, j, ...) <- value

\S4method{[}{antsImage,`NULL`,numeric,numeric}(x, i, j, ...) <- value

as.antsImage(object, ...)

\S4method{as.antsImage}{matrix}(object, pixeltype = "float",
  spacing = as.numeric(seq.int(from = 1, by = 0, length.out =
  length(dim(object)))), origin = as.numeric(seq.int(from = 0, by = 0,
  length.out = length(dim(object)))))

\S4method{as.antsImage}{array}(object, pixeltype = "float",
  spacing = as.numeric(seq.int(from = 1, by = 0, length.out =
  length(dim(object)))), origin = as.numeric(seq.int(from = 0, by = 0,
  length.out = length(dim(object)))))
}
\arguments{
\item{x}{antsImage}

\item{i}{logical or i-th dimension}

\item{j}{not used or j-th dimension}

\item{...}{Extra named arguments passed to FUN}

\item{drop}{method for missing data}

\item{k}{not used or k-th dimension}

\item{l}{not used or l-th dimension}

\item{value}{ok}

\item{object}{An object}

\item{pixeltype}{a character string e.g. "float"}

\item{spacing}{numeric vector matching image dimensionality e.g. c(1.2,1.2)}

\item{origin}{numeric vector matching image dimensionality e.g. c(0,0)}
}
\description{
convert types to antsImage
}
\section{Methods (by class)}{
\itemize{
\item \code{x = antsImage,i = NULL,j = ANY}: 

\item \code{x = antsImage,i = NULL,j = ANY}: 

\item \code{x = antsImage,i = logical,j = ANY}: 

\item \code{x = antsImage,i = logical,j = ANY}: 

\item \code{x = antsImage,i = ANY,j = ANY}: 

\item \code{x = antsImage,i = ANY,j = ANY}: 

\item \code{x = antsImage,i = NULL,j = NULL}: 

\item \code{x = antsImage,i = NULL,j = NULL}: 

\item \code{x = antsImage,i = numeric,j = numeric}: 

\item \code{x = antsImage,i = numeric,j = numeric}: 

\item \code{x = antsImage,i = numeric,j = NULL}: 

\item \code{x = antsImage,i = numeric,j = NULL}: 

\item \code{x = antsImage,i = NULL,j = numeric}: 

\item \code{x = antsImage,i = NULL,j = numeric}: 

\item \code{x = antsImage,i = missing,j = numeric}: 

\item \code{x = antsImage,i = numeric,j = missing}: 

\item \code{x = antsImage,i = missing,j = missing}: 

\item \code{x = antsImage,i = NULL,j = ANY,value = ANY}: 

\item \code{x = antsImage,i = logical,j = ANY,value = ANY}: 

\item \code{x = antsImage,i = array,j = ANY,value = ANY}: 

\item \code{x = antsImage,i = matrix,j = ANY,value = ANY}: 

\item \code{x = antsImage,i = list,j = ANY,value = ANY}: 

\item \code{x = antsImage,i = NULL,j = antsRegion,value = ANY}: 

\item \code{x = antsImage,i = logical,j = antsRegion,value = ANY}: 

\item \code{x = antsImage,i = array,j = antsRegion,value = ANY}: 

\item \code{x = antsImage,i = matrix,j = antsRegion,value = ANY}: 

\item \code{x = antsImage,i = NULL,j = NULL,value = numeric}: 

\item \code{x = antsImage,i = numeric,j = numeric,value = numeric}: 

\item \code{x = antsImage,i = numeric,j = NULL,value = numeric}: 

\item \code{x = antsImage,i = NULL,j = numeric,value = numeric}: 

\item \code{matrix}: 

\item \code{array}: 
}}

