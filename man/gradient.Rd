% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gradient.R
\name{gradient}
\alias{gradient}
\title{gradient}
\usage{
gradient(x, y, colors, len = c(0.1, 0.2), pos = NULL, dist = c(0.1,
  0.1), place = "upperright", bars = 5, tdist = 0.04, labels = c(0,
  1), title = NULL, tdisttitle = 0.04, font = 1, tcol = "white")
}
\arguments{
\item{x}{= x axis values}

\item{y}{= y axis values}

\item{colors}{= vector of colors}

\item{len}{= width of the bar given as a proportion of x and y axis}

\item{pos}{= maximum x and y coordinate}

\item{dist}{= the distance from the border}

\item{place}{= placement of the bar in the plot window (upperright, lowerleft, upperleft, lowerright)}

\item{bars}{= number of bars to distinguish in the gradient}

\item{tdist}{= distance of text from gradient bar}

\item{labels}{= vector with min and max value}

\item{tcol}{text color of labels and title}

\item{if}{pos is null dist and place can be used to set the position of the}

\item{If}{pos is null than dist (distance from border) and place (upperright, lowerleft, upperleft, lowerright) is used to determine the position}
}
\description{
Generates a kml including the heading
}
\examples{
EXAMPLE 1 
x <- 1:100
y <- (1:100)/5
colors <- colorRampPalette(c('grey90','grey20'))(100)
plot(x,y, col=colors)
gradient(x,y, col=colors)
EXAMPLE 2 
If there are less than 20 colors no bars are plotted 
colors <- colorRampPalette(c('grey90','grey20'))(10)
plot(x,y, col=colors)
gradient(x,y, col=colors)
EXAMPLE 3  
x <- 1:100
y <- (1:100)/5
colors <- colorRampPalette(c('grey90','grey20'))(100)
plot(x,y, col=colors)
Add gradient using pos (values of x and y axis) or using dist (distance from border) and place (upperright, upperleft,...)
gradient(x,y, col=colors, pos=c(21,18)) # using pos 
gradient(x,y, col=colors, dist=c(0.1,0.1), place = 'upperleft') # using dist and place 
}
\keyword{gradient}
\keyword{scale}
