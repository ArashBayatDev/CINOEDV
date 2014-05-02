\name{ConstructCompleteGraph}

\alias{ConstructCompleteGraph}

\title{
Construct complete graph
}

\description{
This function construct complete graph by using all vertices and edges.
}

\usage{
ConstructCompleteGraph(Vertices, Edges, BaseSize = 6, SaveFileName = "")
}

\arguments{
  \item{Vertices}{
matrix. Vertices of constructed graphs, including real vertices and virtual vertices. The first column represents SNP ID or SNP-combination ID. The second column represents effect value. The third column represents the class of vertices, "1" -> real vertice, others -> virtual vertice.
}
  \item{Edges}{
matrix. Edges of constructed graphs.
}
  \item{BaseSize}{
numeric. Basic size of vertices in the graph. By default, BaseSize <- 6.
}
  \item{SaveFileName}{
character. Basic file name for saving figure. By default, SaveFileName <- "".
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
data(Vertices)
data(Edges)
ConstructCompleteGraph(Vertices, Edges, BaseSize = 6, SaveFileName = "")
}
