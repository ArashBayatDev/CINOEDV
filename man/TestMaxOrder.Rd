\name{TestMaxOrder}

\alias{TestMaxOrder}

\title{
Test the parameter MaxOrder
}

\description{
This function check the parameter MaxOrder. MaxOrder is the maximum order of epistatic interactions that CINOEDV considered. 
}

\usage{
TestMaxOrder(MaxOrder)
}

\arguments{
  \item{MaxOrder}{
character. It must be setted as "1", "2", "3", "4", or "5".
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
MaxOrder <- "2"
TestMaxOrder(MaxOrder)
}
