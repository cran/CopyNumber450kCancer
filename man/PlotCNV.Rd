\name{PlotCNV}
\alias{PlotCNV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot the CNV Regions with the Density Plot
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Uses the regions object, this function will plot the last modified regions object (i.e. after the autocorrection or the reviewing)
}
\usage{
PlotCNV(object, select, comment = F, cutoff = 0.1, markers = 20)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{select}{
  The number of the samples to be reviewed, if not determined then all the samples in the sample list will be selected
%%     ~~Describe \code{select} here~~
}
  \item{comment}{
  If TRUE then the comment in the sample list file will be printed in the header of the plots, default is FALSE
%%     ~~Describe \code{comment} here~~
}
  \item{cutoff}{
  cutoff for the segments coloring , default is cutoff = 0.1
%%     ~~Describe \code{cutoff} here~~
}
  \item{markers}{
    the minimum number of markers in the segment to be plotted, default is markers = 20
    %%     ~~Describe \code{markers} here~~
  }
}

\examples{
#example
# the package contains example files: regions.csv and sample_list.csv
#to load the example regions.csv and sample_list.csv files
regions <- system.file("extdata", "regions.csv", package="CopyNumber450kCancer")
sample_list <- system.file("extdata", "sample_list.csv", package="CopyNumber450kCancer")

# Creat the object for the package
object <- ReadData(regions,sample_list) 

# Baseline autocorrection, 
# this will creat different plot and QC and new regions file in the working directory
object <- AutoCorrectPeak(object)

# For manual revision and manual baseline determination
# object <- ReviewPlot(object)

# To plot the final plots
PlotCNV(object) # to plot all the samples
PlotCNV(object, select= c(1,4), comment=FALSE, cutoff=0.1, markers=20) # to plot some samples
}
