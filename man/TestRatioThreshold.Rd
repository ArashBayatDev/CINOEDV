\name{TestRatioThreshold}

\alias{TestRatioThreshold}

\title{
Test the parameter RatioThreshold
}

\description{
This function check the parameter RatioThreshold.
}

\usage{
TestRatioThreshold(MaxOrder, RatioThreshold)
}

\arguments{
  \item{MaxOrder}{
numeric. The considered maximum order of epistatic interactions. It must be setted as 1, 2, 3, 4, or 5.
}
  \item{RatioThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of NumberThreshold. The length of RatioThreshold is equal to MaxOrder. Each element is a decimal in [0,1] with the character format.
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
RatioThreshold <- c("1.0","0.5","0.2")
TestRatioThreshold(MaxOrder, RatioThreshold)
}
