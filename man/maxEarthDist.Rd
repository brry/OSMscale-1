% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/maxEarthDist.R
\name{maxEarthDist}
\alias{maxEarthDist}
\title{maximum distance between set of points}
\usage{
maxEarthDist(lat, long, data, r = 6371)
}
\arguments{
\item{lat, long, data}{Coordinates for \code{\link{earthDist}}}

\item{r}{radius for \code{\link{earthDist}}}
}
\value{
Single number
}
\description{
Maximum great-circle distance between points at lat-long coordinates.
This is not computationally efficient.
For large datasets, consider pages like \url{http://stackoverflow.com/a/16870359}.
}
\examples{

d <- read.table(header=TRUE, text="
    x     y
9.19 45.73
6.55 58.13
7.71 71.44")

plot(d, asp=1, pch=as.character(1:3))
earthDist(y,x,d, i=2)
earthDist(y,x,d, i=3)

maxEarthDist(y,x,d)

}
\seealso{
\code{\link{earthDist}}
}
\author{
Berry Boessenkool, \email{berry-b@gmx.de}, Jan 2017
}
\keyword{spatial}
