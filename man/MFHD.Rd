\name{MFHD}
\alias{MFHD}
\title{Multivariate functional halfspace depth and median for two-dimensional functional data.}
\usage{
  MFHD(y1,y2,alpha=0.125,Beta=0.5,Time=NULL)
}
\arguments{
     \item{y1}{first set of n functional curves, matrix with T columns.} 
     \item{y2}{second set of curves (in particular, y2 can be the derivative of y1).}
       \item{alpha}{the level of the depth regions used for the computation of the weights: 
           This value should be smaller than the maximal halfspace depth at any time point,
           divided by n. Default is 0.125. alpha=NULL defaults to uniform weights for all 
	cross-sections.}
        \item{Beta}{beta-value for the dispersion curve. Should be between 0 and 1.
           Default is 0.50.}
        \item{Time}{If the measurements are not equidistant, a sorted numeric vector containing 
           a set of time points. Default to NULL in which case it is ignored.} 
}
\value{
 A  list with the following
  components:
            \item{MFHDdepth}{n-vector containing the MFHD depth of every curve.}		
       \item{MFHDmedian}{2 by T-vector of MFHD median.}
         \item{weights}{T-vector of MFHD weights (used in the definition of the MFHD depth).}
             \item{disp}{(2xT)-vector of dispersion curves (of level Beta) for y1 and y2.}
         \item{loc.outl}{n by T matrix of flags (takes value 1 if curve i is outlying at time point j).}
}
\description{
MFHD calculates the MFHD depth and MFHD median for two-dimensional functional data.
Additionally MFHD computes for every curve at every time point whether
 or not it is outlying, based on the bivariate bagplot.
}
\references{
Claeskens, G., Hubert, M., Slaets, L. and Vakili, K. (2013)
 "Multivariate Functional Halfspace Depth", 
 Journal of the American Statistical Association, in press.
}
\examples{
set.seed(123)
n<-30;
T<-60;
t.<-seq(0,2*pi,l=T)
y1<-matrix(NA,n,T)
for(i in 1:n) y1[i,]<-loess((1/2*sin(t.)+3/2*cos(t.)+rnorm(T))~I(1:T),span=1/4)$fitted
y2<-derivcurves(y1)
results<-MFHD(y1=y1,y2=y2,alpha=0.125,Beta=0.5) 
}
\author{
M. Hubert, K. Vakili.
}
\keyword{Functional data}


