\name{TestSNPNameFile}

\alias{TestSNPNameFile}

\title{
Test the parameter TestSNPNameFile
}

\description{
This function check the parameter TestSNPNameFile. If there are real SNP names which will be used for constructing graphs and further analysis, the name of file that saves real SNP names should be provided.
}

\usage{
TestSNPNameFile(RowNum, SNPNameFileName = NA)
}

\arguments{
  \item{RowNum}{
numeric. It is the number of considered SNPs.
}
  \item{SNPNameFileName}{
character or logical (NA). The file name with its format (.mat) that saves the names of SNPs. The file has only one variable, i.e., Name. In Name, Row -> 1, Column -> SNP Name, and the length is equal to RowNum. If not exist such file (default), SNPNameFileName <- NA.
}
}

\value{
SNPNames: character or logical (NA). Names of SNPs.
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
RowNum <- 10
SNPNameFileName <- NA
SNPNames <- TestSNPNameFile(RowNum, SNPNameFileName)
SNPNames <- SNPNames$SNPNames
}
