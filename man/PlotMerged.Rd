\name{PlotMerged}
\alias{PlotMerged}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
To Make Plots with Merged Regions
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
optional function to make all the regions in 3 fixed log levels (deletion, normal, duplication) and then to plot the samples
}
\usage{
PlotMerged(object, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{cutoff}{
  This cutt of will affect these plots, default is cutoff = 0.1
%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
  minimum number of marker required in the region, default is (markers = 20)
%%     ~~Describe \code{markers} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\examples{
# the package contains example files: regions.csv and sample_list.csv
#to load the example regions.csv and sample_list.csv files
regions <- system.file("extdata", "regions.csv", package="CopyNumber450kCancer")
sample_list <- system.file("extdata", "sample_list.csv", package="CopyNumber450kCancer")

# Creat the object for the package
object <- ReadData(regions,sample_list) 

# Optional function to plot all the amplifications and delections in the same level
PlotMerged(object,comment = TRUE, cutoff = 0.2, markers = 5)

}