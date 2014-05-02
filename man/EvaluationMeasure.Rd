\name{EvaluationMeasure}

\alias{EvaluationMeasure}

\title{
Evaluation Measure
}

\description{
This function provides several co-information based measures for measuring main or interaction effect of a SNP or SNP-combination.
}

\usage{
EvaluationMeasure(factor, pts, class, measure = 1)
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
  \item{measure}{
numeric. The used evaluation measure. 1 -> the classic co-information measure; 2 -> the normalized co-information measure; 3 -> TingHu's co-informationn measure.
}
}

\value{
Value: matrix. The main or interaction effect value corresponding to a sing SNP or a SNP combination.
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
factor <- c(2,5)
data(pts)
data(class)
V <- EvaluationMeasure(factor, pts, class, measure = 1)
Value <- V$Value
}
