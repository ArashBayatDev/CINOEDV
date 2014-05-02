\name{SubgraphSplit}

\alias{SubgraphSplit}

\title{
Split subgraphs
}

\description{
Split subgraphs using walktrap.community algorithm
}

\usage{
SubgraphSplit(Vertices, Edges)
}

\arguments{
  \item{Vertices}{
matrix. Vertices of constructed graphs, including real vertices and virtual vertices. The first column represents SNP ID or SNP-combination ID. The second column represents effect value. The third column represents the class of vertices, "1" -> real vertice, others -> virtual vertice.
}
  \item{Edges}{
matrix. Edges of constructed graphs.
}
}

\value{
SubgroupSNPs: list. SNPs in each subgraph of the graph.
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
data(Vertices)
data(Edges)
SubgroupSNPs <- SubgraphSplit(Vertices, Edges)
SubgroupSNPs <- SubgroupSNPs$SubgroupSNPs
}

