\name{DegreeAnalysis}

\alias{DegreeAnalysis}

\title{
Degree analysis of real vertices
}

\description{
Degree analysis of real vertices.
}

\usage{
DegreeAnalysis(Vertices, Edges, SaveFileName = "")
}

\arguments{
  \item{Vertices}{
matrix. Vertices of constructed graphs, including real vertices and virtual vertices. The first column represents SNP ID or SNP-combination ID. The second column represents effect value. The third column represents the class of vertices, "1" -> real vertice, others -> virtual vertice.
}
  \item{Edges}{
matrix. Edges of constructed graphs.
}
  \item{SaveFileName}{
character. Basic file name for saving figure. By default, SaveFileName <- "".
}
}

\value{
Degrees: matrix. Degrees of real vertices.
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
Degrees <- DegreeAnalysis(Vertices, Edges, SaveFileName = "")
Degrees <- Degrees$Degrees
}
