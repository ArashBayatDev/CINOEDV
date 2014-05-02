\name{CINOEDV_Main}

\alias{CINOEDV_Main}

\title{
Co-Information based N-Order Epistasis Detector and Visualizer
}

\description{
This function integrates almost all functions of the package for providing one stop service.
}

\usage{
CINOEDV_Main()
}

\details{
No input parameters
}

\value{
\item{parameters}{list. It returns six parameters, including FileName, MaxOrder, RatioThreshold, NumberThreshold, SNPNameFileName, and measure. 
FileName: character. The file name with its format (.mat) that saves SNP data. 
MaxOrder: numeric. The considered maximum order of epistatic interactions. 
RatioThreshold: numeric. It controls the numbers of detected SNPs or SNP-combinations with the help of NumberThreshold. 
NumberThreshold: numeric. It controls the numbers of detected SNPs or SNP-combinations with the help of RatioThreshold. 
SNPNameFileName: character or logical (NA). The file name with its format (.mat) that saves the names of SNPs. 
measure: numeric. The used evaluation measure.
}

\item{data}{list. It returns used data, including pts, class, and SNPNames. 
pts: matrix. SNP data. 
class: matrix. Class labels of samples.
SNPNames: character or logical (NA). Names of SNPs.
}

\item{results}{list. It returns detected results, including SingleEffect, TwoEffect, ThreeEffect, FourEffect, and FiveEffect.
SingleEffect: matrix. main Effects of SNPs.
TwoEffect: matrix. interaction Effects of two-SNP combinations.
ThreeEffect: matrix. interaction Effects of three-SNP combinations.
FourEffect: matrix. interaction Effects of four-SNP combinations.
FiveEffect: matrix. interaction Effects of five-SNP combinations.
}

\item{graphs}{list. It returns observed results from the constructed graph, including Edges, Vertices, TopEffect, Degrees, SubgraphSNPs, CombinationEffect and HeatMapFactors.
Edges: matrix. Edges of constructed graphs.
Vertices: matrix. Vertices of constructed graphs, including real vertices and virtual vertices.
TopEffect: numeric. Top independent effects of SNPs or SNP-combinations.
Degrees: matrix. Degrees of real vertices.
SubgraphSNPs: list. SNPs in each subgraph of the graph.
CombinationEffect: numeric. Top combination effects of SNPs or SNP-combinations.
HeatMapFactors: data.frame. The heatmap data for observing how a SNP or a SNP-combination influencing the phenotype. 
}
}

\references{
None
}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\note{
The returned values also save in files with (.mat) or (.RData) formats respectively.
}

\examples{
# See details of package CINOEDV
}

\keyword{ Epistasis}

\keyword{ Co-Information}

