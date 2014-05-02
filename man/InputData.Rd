\name{InputData}

\alias{InputData}

\title{
Input data
}

\description{
Input SNP data from a file with (.mat) format.
}

\usage{
InputData(FileName)
}

\arguments{
  \item{FileName}{
character. The file name with its format (.mat) that saves SNP data. It has two variables, i.e., pts and class. For pts, Row -> Sample, Column -> SNP, 1 -> AA, 2 -> Aa, 3 -> aa. For class, Row -> 1, Column -> class label, 1 -> case, 2-> control.
}
}

\value{
\item{pts}{
matrix. Each row represents a sample. Each column represents a SNP. For the element, 1 -> AA, 2 -> Aa, 3 -> aa.
}
\item{class}{
matrix. It only has one row. Each column represents a class label. For the element, 1 -> case, 2-> control.
}
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{

# The files (test.mat) should be downloaded from http://sourceforge.net/projects/cinoedv/files/.

FileName <- system.file("extdata","test.mat",package="CINOEDV")
Data <- InputData(FileName)
pts <- Data$pts
class <- Data$class
}
