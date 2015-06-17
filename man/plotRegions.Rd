\name{plotRegions}
\alias{plotRegions}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Genomic Copy Number Plotting Function
}
\description{
To be used internally by the package only.

%%  ~~ A concise (1-5 lines) description of what the function does. ~~

This function plots the chromosomal regions (segments) with colored segments based on the cutoff.
This function was built based on "plotSample" function in "CopyNumber450k" package (http://www.bioconductor.org/packages/release/bioc/html/CopyNumber450k.html), and uses a modified "minor.tick" function in "Hmisc" package to draw small tick in the plots.
}
\usage{
plotRegions(object, chr, start, end, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
%%     ~~Describe \code{object} here~~
  Data object, as returned by \code{\link{ReadData}}.
}
  \item{chr}{
    %%     ~~Describe \code{chr} here~~
    Chromosomes to plot.
  }
  \item{start}{
%%     ~~Describe\code{start} here~~
    Start positions of region to plot.
  }
  \item{end}{
    %%     ~~Describe \code{end} here~~
    End position of region to plot.
  }
  \item{cutoff}{
    %%     ~~Describe \code{cutoff} here~~
    Log R ratio cutoff.
  }
  \item{markers}{
    %%     ~~Describe \code{markers} here~~
    Minimum number of markers per segment cutoff. Less than this number the segment will not be plotted.
  }
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
    Sent to \code{\link{plot}}.
}
}
\examples{
#To be used internally by the package only

# the package contains example files: regions.csv and sample_list.csv
#to load the example regions.csv and sample_list.csv files
regions <- system.file("extdata", "regions.csv", package="CopyNumber450kCancer")
sample_list <- system.file("extdata", "sample_list.csv", package="CopyNumber450kCancer")

# Creat the object for the package
object <- ReadData(regions,sample_list) 

#to plot all the regions and all the sampls in one plot
plotRegions(object$regions)
}