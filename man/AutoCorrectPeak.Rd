\name{AutoCorrectPeak}
\alias{AutoCorrectPeak}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
This Function is the Main Function in CopyNumber450kCancer Package Which Correct the Baseline Based on the Density of the Probes/Segments
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~

This function generate:
1) a new segmentation file which is similar to the segmentation input but with the new log values, 
2) plots show the samples before and after the baseline correction, 
3) a QC file, 
4) a file contains the shifting amounts for each sample

QC:
There are no well-defined quality control (QC) standards for 450k data segmentation; therefore we selected different quality control standards those already used with the SNP arrays. QC file will be produced with these QC standards for each sample: Interquartile Range (IQR), Median Absolute Pairwise Difference (MAPD), and number of the segments, standard deviation (SD), and in the addition of a suggested QC standard named Maximum Density Peak Sharpness (MDPS). The QC values are calculated based on the log values of the segments but not the probes. BaCo450k does not provide any QC thresholds because they are different from an experiment to another. The user can check the QC file and exclude the samples those have low quality QC values. We strongly recommend the visual reviewing for the segmentation plots as to recognize the low-quality samples.
}
\usage{
AutoCorrectPeak(object, cutoff = 0.1, markers = 20, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{
    Data object, as returned by \code{\link{ReadData}}.
  }
  \item{cutoff}{
    %%     ~~Describe \code{cutoff} here~~
    The cutoff to be used in the ploting, the data or the new segments file will not be affected (default: 0.1)
  }
  \item{markers}{
    %%     ~~Describe \code{markers} here~~
    The minimum number of the probes required in the segment to be plotted (default: 20)
  }
  \item{\dots}{
    %%     ~~Describe \code{\dots} here~~
    Sent to \code{\link{plotRegions}}.
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

