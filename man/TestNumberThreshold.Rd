\name{TestNumberThreshold}

\alias{TestNumberThreshold}

\title{
Test the parameter NumberThreshold
}

\description{
This function check the parameter NumberThreshold
}

\usage{
TestNumberThreshold(MaxOrder, NumberThreshold)
}

\arguments{
  \item{MaxOrder}{
numeric. The considered maximum order of epistatic interactions. It must be setted as 1, 2, 3, 4, or 5.
}
  \item{NumberThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of RatioThreshold. The length of NumberThreshold is equal to MaxOrder. Each element is an integer with the character format.
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

\examples{
MaxOrder <- 3
NumberThreshold <- c("5","20","10")
TestNumberThreshold(MaxOrder, NumberThreshold)
}
