\name{BatCINOEDV}

\alias{BatCINOEDV}

\title{
Batch mode for using CINOEDV
}

\description{
Batch mode for using CINOEDV function.
}

\usage{
BatCINOEDV(FileName, MaxOrder, RatioThreshold, 
           NumberThreshold, measure, SNPNameFileName)
}

\arguments{
  \item{FileName}{
character. The file name with its format (.mat) that saves SNP data. It has two variables, i.e., pts and class. For pts, Row -> Sample, Column -> SNP, 1 -> AA, 2 -> Aa, 3 -> aa. For class, Row -> 1, Column -> class label, 1 -> case, 2-> control.
}
  \item{MaxOrder}{
numeric. The considered maximum order of epistatic interactions. It must be setted as 1, 2, 3, 4, or 5.
}
  \item{RatioThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of NumberThreshold. The length of RatioThreshold is equal to MaxOrder. Each element is a decimal in [0,1].
}
  \item{NumberThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of RatioThreshold. The length of NumberThreshold is equal to MaxOrder. Each element is an integer.
}
  \item{measure}{
numeric. The used evaluation measure. 1 -> the classic co-information measure; 2 -> the normalized co-information measure; 3 -> TingHu's co-informationn measure.
}
  \item{SNPNameFileName}{
character. The file name with its format (.mat) that saves the names of SNPs. The file has only one variable, i.e., Name. In Name, Row -> 1, Column -> SNP Name, and the length is equal to RowNum. If not exist such file (default), SNPNameFileName <- NA.
}
}

\value{
None
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\note{
The returned values save in files with (.mat) or (.RData) formats respectively.
}

\examples{
File1 <- system.file("extdata","test.mat",package="CINOEDV")
File2 <- system.file("extdata","test1.mat",package="CINOEDV")
File3 <- system.file("extdata","test1_Name.mat",package="CINOEDV")
FileName <- c(File1,File2)
SNFName <- c(NA,File3)
MaxOrder <- 2
RThreshold <- c(1, 1)
NThreshold <- c(10, 10)
measure <- 1
BatCINOEDV(FileName, MaxOrder, RThreshold, NThreshold, measure, SNFName)
}