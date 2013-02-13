\name{MFHD-package}
\docType{package}
\title{Multivariate functional halfspace depth and median for two-dimensional functional data.}
\description{
These functions compute the Multivariate Functional Halfspace Depth
 depth and median for two-dimensional functional data.
Additionally MFHD computes for every curve at every time point whether 
or not it is outlying, based on the bivariate bagplot.
}
\details{
\tabular{ll}{
Package: \tab MFHD\cr
Type: \tab Package\cr
Version: \tab 0.1.1\cr
Date: \tab 2013-02-13\cr
Depends: \tab deldir, utils, fda, depth, geometry, matrixStats, fda.usc, depthTools\cr
Imports: \tab deldir, utils, fda, depth, geometry, matrixStats, fda.usc, depthTools\cr
Suggests: \tab mvtnorm\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
}

Index:
\preformatted{
MFHD                 Function to compute the Multivariate Functional Halfspace Depth
                  for bivariate curves.
MFHD_bagplot     Internal function called by MFHD.
derivcurves      Internal function called MFHD.
}
}
\author{
M. Hubert, K. Vakili.
Maintainer: K. Vakili <kaveh.vakili@wis.kuleuven.be>
}
\keyword{package}
