\name{CheckVerticeType}

\alias{CheckVerticeType}

\title{
Test Vertice Type
}

\description{
This function check a vertice whether belongs to a real vertice or a virtual one.
}

\usage{
CheckVerticeType(Vertice)
}

\arguments{
  \item{Vertice}{
character. A vertice in the network, namely, the graph.
}
}

\value{
Whether: logical. Whether the checked vertice belongs to a real vertice or a virtual one.
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
Vertice <- "rs1366208"
Whether <- CheckVerticeType(Vertice)
Whether <- Whether$Whether
Vertice <- "rs2801008:rs4763023"
Whether <- CheckVerticeType(Vertice)
Whether <- Whether$Whether
}
