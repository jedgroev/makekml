% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kml2.R
\name{kml2}
\alias{kml2}
\title{kml2}
\usage{
kml2(obj, altitude, colour, heading, size, size_scale = c(0.5, 2), icon,
  filename = "text.kml", legend_icon = NULL)
}
\arguments{
\item{obj}{spatialpointsdataframe with the parameters}

\item{altitude}{altitude column in the data frame of obj}

\item{colour}{column that represents the colours in the data frame of obj}

\item{heading}{column that represents the heading in the data frame of obj}

\item{size}{variable that represents the size in the data frame of obj}

\item{size_scale}{rescaling min and max value}

\item{icon}{image weblink readible by plotKLM or an image you want to use as icon}

\item{filename}{output file name of the kml}

\item{legend_icon}{png that represents the legend}
}
\description{
Generates a kml including the heading
}
\examples{
# Prepare a dataframe 
obj <- data.frame(altitude=1:100,colour=heat.colors(100),variable_colour=1:100,heading=seq(1,365,length.out=100),variable_size=runif(100),longitude=seq(15.202020, 16.202020,length.out=100), latitude=seq(45.459069,46.543523,length.out=100),stringsAsFactors = FALSE)
coordinates(obj) <- c('longitude','latitude')
proj4string(obj)<- CRS("+init=epsg:4326")
# Example using png plucked from the internet 
kml2(obj,altitude='altitude',colour='colour',heading='heading',size='variable_size',icon="http://maps.google.com/mapfiles/kml/shapes/airports.png",filename='test.kml')
# Example using png locally stored
# first generate an icon
icon(pch=21, col='black',bg='white',filename='icon')
# Use function with the generated icon
kml2(obj,altitude='altitude',colour='colour',heading='heading',size='variable_size',icon="icon.png",filename='test.kml')
# Example that also includes a legend
# generate a gradient
colors_legend <- unique(obj@data[order(obj$variable_colour),c('colour','variable_colour')])
gradient_icon(col=colors_legend$colour, 
              labels = round(c(min(colors_legend$variable_colour),max(colors_legend$variable_colour)),2),
              bars=5,
              title='title',
              tdist=0.2,
              tcol='white',
              ratio=0.5,
              filename='gradient_icon')
kml2(obj,altitude='altitude',colour='colour',heading='heading',size='variable_size',icon="icon.png",filename='test.kml',legend_icon='gradient_icon.png')
kml2kmz(c('icon.png','test.kml','gradient_icon.png'),'test_kmz')
}
\keyword{heading}
\keyword{kml,}
