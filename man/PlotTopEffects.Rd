\name{PlotTopEffects}

\alias{PlotTopEffects}

\title{
Plot top n effects with their corresponding SNPs or SNP-combinations
}

\description{
Effects can be respectively considered as independent effects and combination effects. Independent Effect: Effect that only the SNP or SNP-combination has. Combination Effect: Effect is the addition of all effects of SNP-combination and its sub-combinations. This function plots top n effects (including Independent Effect and Combination Effect) with their corresponding SNPs or SNP-combinations.
}

\usage{
PlotTopEffects(Vertices, Top = 20, SaveFileName = "")
}

\arguments{
  \item{Vertices}{
matrix. Vertices of constructed graphs, including real vertices and virtual vertices. The first column represents SNP ID or SNP-combination ID. The second column represents effect value. The third column represents the class of vertices, "1" -> real vertice, others -> virtual vertice.
}
  \item{Top}{
numeric. Top n Effects. By default, Top <- 20.
}
  \item{SaveFileName}{
character. Basic file name for saving figure. By default, SaveFileName <- "".
}
}

\value{
\item{TopEffect}{
numeric. Top independent effects of SNPs or SNP-combinations.
}
\item{CombinationEffect}{
numeric. Top combination effects of SNPs or SNP-combinations.
}
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
TP <- PlotTopEffects(Vertices, Top = 20, SaveFileName = "")
TopEffect <- TP$TopEffect
CombinationEffect <- TP$CombinationEffect
}
