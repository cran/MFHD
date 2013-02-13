\name{derivcurves}
\alias{derivcurves}
\title{Computes the derivative of functional data.}
\usage{
  derivcurves(y1,method="bspline")
}
\arguments{
  \item{y1}{A n by T matrix of functional data.}

  \item{method}{Type of derivative method, for more information see
          details.}
}
\details{
\itemize{
 	 \item If method="bspline", "exponential", "fourier",
          "monomial" or "polynomial", the "derivcurves" function creates
          a basis to represent the functional data.
        \item If "method"="diff", raw derivation is applied.  Not
          recommended to use this method when the values are not
          equally spaced.
}
This function is a wraper for 
\code{"fda.usc::fdata.deriv"}. See \code{help("fda.usc::fdata.deriv")}.
}
\value{
   Returns the derivative of functional data.
}
\description{
Often one set of curves y1 is given, and the second set of curves y2
are the (estimated) derivatives. 
This function computes these derivatives.
}
\examples{
set.seed(123)	
n<-50;
T<-100;	 
t.<-seq(0,2*pi,l=T)
y<-matrix(NA,n,T)
for(i in 1:n)	y[i,]<-runif(1,0,1)*sin(t.)+runif(1,0,1)*cos(t.)
y2<-derivcurves(y)	
}
\author{
K. Vakili.
}
\keyword{functional}

