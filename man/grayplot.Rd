% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grayplot.R
\name{grayplot}
\alias{grayplot}
\title{Scatterplot with a gray background}
\usage{
grayplot(
  x,
  y = NULL,
  ...,
  type = "p",
  hlines = NULL,
  hlines.col = "white",
  hlines.lty = 1,
  hlines.lwd = 1,
  vlines = NULL,
  vlines.col = "white",
  vlines.lty = 1,
  vlines.lwd = 1,
  xat = NULL,
  yat = NULL,
  bgcolor = "gray90",
  pch = 21,
  bg = "lightblue",
  col = "black",
  v_over_h = FALSE
)
}
\arguments{
\item{x}{Coordinates of points in the plot}

\item{y}{Coordinates of points in the plot (optional)}

\item{...}{Optional graphics arguments}

\item{type}{Plot type (points, lines, etc.)}

\item{hlines}{Locations of horizontal grid lines; use \code{hlines=NA} to prevent horizontal grid lines}

\item{hlines.col}{Colors of horizontal grid lines}

\item{hlines.lty}{Line type of horizontal grid lines}

\item{hlines.lwd}{Line width of horizontal grid lines}

\item{vlines}{Locations of vertical grid lines; use \code{vlines=NA} to prevent vertical grid lines}

\item{vlines.col}{Colors of vertical grid lines}

\item{vlines.lty}{Line type of vertical grid lines}

\item{vlines.lwd}{Line width of vertical grid lines}

\item{xat}{Locations for x-axis labels; \code{xat=NA} indicates no labels}

\item{yat}{Locations for y-axis labels; \code{yat=NA} indicates no labels}

\item{bgcolor}{Background color}

\item{pch}{point type}

\item{bg}{Background color in points}

\item{col}{Color of outer circle in points}

\item{v_over_h}{If \code{TRUE}, place vertical grid lines on top of
the horizontal ones.}
}
\value{
None.
}
\description{
Like the plot function, but using a gray background just
for the plot region.
}
\details{
Calls \code{plot()} with \code{type="n"}, then \code{\link[graphics:rect]{graphics::rect()}} to
get the background, and then \code{\link[graphics:points]{graphics::points()}}. Additional
arguments you can include: \code{mgp.x} and \code{mgp.y} (like \code{mgp}, for
controlling parameters of axis labels, but separate for x- and
y-axis).
}
\examples{
\dontshow{set.seed(97536917)}
x <- rnorm(100)
y <- x+rnorm(100, 0, 0.7)
grayplot(x, y, col="slateblue", pch=16)
at <- seq(-3, 3)
grayplot(x, y, col="violetred", pch=16, hlines=at, vlines=at)
grayplot(x, col="Orchid", pch=16, bgcolor="gray80",
         hlines=seq(-4, 4, by=0.5), hlines.lwd=c(3,1),
         vlines=seq(0, 100, by=5), vlines.lwd=c(3,1,1,1))

}
\seealso{
\code{\link[=dotplot]{dotplot()}}, \code{\link[=timeplot]{timeplot()}}, \code{\link[graphics:par]{graphics::par()}}, \code{\link[graphics:rect]{graphics::rect()}}, \code{\link[graphics:points]{graphics::points()}}
}
\keyword{graphics}
