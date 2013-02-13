\name{MFHD_bagplot}
\alias{MFHD_bagplot}
\title{Computes the bagplot for the MFHD algorithm.}
\description{
  This is an internal function not intended to be called 
  by the user. This function is a minimally modified adaptation of 
\code{"aplpack::bagplot"}. The main difference is that while 
aplpack::bagplot returns the coordinate of the observations outside 
the fence, this version returns the index of the observations outside 
the fence. For more details, see \code{help("aplpack::bagplot")}.
}
\usage{
  MFHD_bagplot(x, y,factor=3,approx.limit=300,verbose=FALSE)
}
\arguments{
 \item{x}{x values of a data set; in "bagplot": an object of class
          "bagplot" computed by "compute.bagplot".}
  \item{y}{y values of the data set.}
\item{factor}{Expanding factor of the fence.}
\item{approx.limit}{if the number of data points exceeds "approx.limit" a
          sample is used to compute some of the quantities; default:
          300.}
 \item{verbose}{automatic commenting of calculations.}
}
\value{
   Returns a list. Component "center" is a two dimensional
     vector with the coordinate of the center. Component 
	outliers is a n-vector of binary values (the observations 
	outside the fence are assigned value 1).
}
\references{
  P. J. Rousseeuw, I. Ruts, J. W. Tukey (1999): The bagplot: a
     bivariate boxplot, The American Statistician, vol. 53, no. 4,
     382--387.

}
\author{
M. Hubert and K. Vakili.
}
\keyword{functional}

