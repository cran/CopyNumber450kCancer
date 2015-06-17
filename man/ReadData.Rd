\name{ReadData}
\alias{ReadData}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Function Reads the Data (i.e. regions file and sample list file) for CopyNumber450kCancer
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
The input should be two files regions file and sample list file.
regions file: contains the data for all the regions/segments in all the sample
sample list file: contains the number of the samples, the names of the samples and user comment.

The header of the segments/regions file should be in this order and with these names:
"Sample", "Chromosome", "bp.Start", "bp.End", "Num.of.Markers", "Mean"
The segments file should have all the samples in one file
Be carful for the dots and it is case sensitive.
Sample: the sample name
Chromosome: the chromosome number chr1, chr2, ....., chrX, chrY
bp.Start: number, the start point for the segment
bp.End: number, the end point for the segment
Num.of.Markers: 
Mean: is the log value for the segment 

The header of the sample list file should be in this order and with these names:
To check if the header of the sample list file is ok
"Number", "Sample", "Comment"
Be carful it is case sensitive.
Number: is the number of the sample 1,2,3,....
Sample: the name of the samples
Comment: any comment the user want to see in the reviewing step and in the QC file, ex karyotyping.


}
\usage{
ReadData(regions_file, Sample_list, copynumber450k = F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{regions_file}{
  The segmentaion file (CSV file)
%%     ~~Describe \code{regions_file} here~~
}
  \item{Sample_list}{
%%     ~~Describe \code{Sample_list} here~~
The CSV file that contains the names of the samples and the user comments
}
  \item{copynumber450k}{
%%     ~~Describe \code{copynumber450k} here~~
True if the file is the output of copynumber450k, defualt is FALSE.
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
