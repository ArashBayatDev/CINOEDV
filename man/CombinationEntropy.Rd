\name{CombinationEntropy}

\alias{CombinationEntropy}

\title{
Combination Entropy Computation
}

\description{
This function compute combination entropy of given variables. These variables can be one SNP, the class label, SNP-combination, or SNP-combination-class label.
}

\usage{
CombinationEntropy(data)
}

\arguments{
  \item{data}{
matrix. The given variables, for example, data <- cbind(pts[,factor],t(class))
}
}

\value{
Combination_Entropy_Value: matrix. combination entropy value.
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
data(pts)
data(class)
factor <- c(2, 5)
data <- cbind(pts[,factor],t(class))
V <- CombinationEntropy(data)
Combination_Entropy_Value <- V$Combination_Entropy_Value
}
