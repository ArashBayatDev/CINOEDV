\name{HeatMapFactor}

\alias{HeatMapFactor}

\title{
Heatmap function
}

\description{
This function create a heatmap figure for visualizing how a SNP or a SNP-combination influencing the phenotype.
}

\usage{
HeatMapFactor(pts, class, factor, SaveFileName = "", Title = "")
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
  \item{SaveFileName}{
character. Basic file name for saving figure. By default, SaveFileName <- "".
}
  \item{Title}{
character. Title of the heatmap figure. By default, Title <- "".
}
}

\value{
HeatMapFactors: data.frame. The heatmap data for observing how a SNP or a SNP-combination influencing the phenotype. 
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
H <- HeatMapFactor(pts, class, factor, SaveFileName = "", Title = "")
HeatMapFactors <- H$HeatMapFactors
}