\name{CoInformation}

\alias{CoInformation}

\title{
Co-Information Computation
}

\description{
This function compute co-information value of a given SNP combination.
}

\usage{
CoInformation(pts, class, factor)
}

\arguments{
  \item{pts}{
matrix. SNP data. Each row represents a sample. Each column represents a SNP. For the element, 1 -> AA, 2 -> Aa, 3 -> aa.
}
  \item{class}{
matrix. Class labels of samples. It only has one row. Each column represents a class label. For the element, 1 -> case, 2-> control.
}
  \item{factor}{
numeric. The considered SNP or SNP-combination. For example, factor <- 5, or factor <- c(2,5)
}
}

\value{
Co_Information_Value: matrix. co-information value of a give SNP combination.
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
factor <- c(2,5)
V <- CoInformation(pts, class, factor)
Co_Information_Value <- V$Co_Information_Value
}
