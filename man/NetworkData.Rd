\name{NetworkData}

\alias{NetworkData}

\title{
Collect vertices and edges for network construction
}

\description{
Collect vertices and edges from effect data (SingleEffect, TwoEffect, ThreeEffect, FourEffect, FiveEffect) for network construction.
}

\usage{
NetworkData(SingleEffect, TwoEffect, ThreeEffect, 
            FourEffect, FiveEffect, RatioThreshold, NumberThreshold)
}

\arguments{
  \item{SingleEffect}{
matrix. main Effects of SNPs. There are 2 columns. The first column saves all SNPs, and the second column saves their corresponding effects. Ddescending save according to their effects.
}
  \item{TwoEffect}{
matrix. interaction Effects of two-SNP combinations. There are three columns. The first two columns save all two-SNP combinations, and the last column saves their corresponding effects. Descending save according to their interaction effects.
}
  \item{ThreeEffect}{
matrix. interaction Effects of three-SNP combinations. There are four columns. The first three columns save all three-SNP combinations, and the last column saves their corresponding effects. Descending save according to their interaction effects.
}
  \item{FourEffect}{
matrix. interaction Effects of four-SNP combinations. There are five columns. The first four columns save all four-SNP combinations, and the last column saves their corresponding effects. Descending save according to their interaction effects.
}
  \item{FiveEffect}{
matrix. interaction Effects of five-SNP combinations. There are six columns. The first five columns save all five-SNP combinations, and the last column saves their corresponding effects. Descending save according to their interaction effects.
}
  \item{RatioThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of NumberThreshold. The length of RatioThreshold is equal to MaxOrder. Each element is a decimal in [0,1].
}
  \item{NumberThreshold}{
character. It controls the numbers of detected SNPs or SNP-combinations with the help of RatioThreshold. The length of NumberThreshold is equal to MaxOrder. Each element is an integer.
}
}

\details{
Parameters 'RatioThreshold' and 'NumberThreshold' are used together to control the numbers of vertices and edges. That is, min(NumberThreshold[1],RatioThreshold[1]*nrow(SingleEffect)), min(NumberThreshold[2],RatioThreshold[2]*nrow(TwoEffect)), min(NumberThreshold[3],RatioThreshold[3]*nrow(ThreeEffect)), min(NumberThreshold[4],RatioThreshold[4]*nrow(FourEffect)), min(NumberThreshold[5],RatioThreshold[5]*nrow(FiveEffect))
Using above settings, the numbers of virtual vertexes denoting high order epistatic interactions in the graph are clear. Nevertheless, the number of Real Vertexes (i.e., the number of SNPs) is unclear, which is obviously more than the above set, since some of them must be included to connect virtual vertexes.
}

\value{
  \item{Vertices}{
matrix. Vertices of constructed graphs, including real vertices and virtual vertices. The first column represents SNP ID or SNP-combination ID. The second column represents effect value. The third column represents the class of vertices, "1" -> real vertice, others -> virtual vertice.
}
  \item{Edges}{
matrix. Edges of constructed graphs.
}
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{
data(SingleEffect)
data(TwoEffect)
data(ThreeEffect)
data(FourEffect)
data(FiveEffect)
RatioThreshold <- c(1,1,1,1,1)
NumberThreshold <- c(10,10,10,10,10)
Net <- NetworkData(SingleEffect, TwoEffect, ThreeEffect, FourEffect, 
       FiveEffect, RatioThreshold, NumberThreshold)
Vertices <- Net$Vertices
Edges <- Net$Edges
}