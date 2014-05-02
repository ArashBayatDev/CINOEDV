\name{NormalizationEffect}

\alias{NormalizationEffect}

\title{
Normalization Effect
}

\description{
Normalization of main effects, and n-order interaction effects in SingleEffect, TwoEffect, ThreeEffect, FourEffect and FiveEffect respectively.
}

\usage{
NormalizationEffect(MaxOrder, SingleEffect, TwoEffect, 
                    ThreeEffect, FourEffect, FiveEffect, SaveFileName = "")
}

\arguments{
  \item{MaxOrder}{
numeric. The considered maximum order of epistatic interactions. It must be setted as 1, 2, 3, 4, or 5.
}
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
  \item{SaveFileName}{
character. Basic file name for saving figure. By default, SaveFileName <- "".
}
}

\value{
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
MaxOrder <- 2
measure <- 1
SaveFileName <- ""
 
# Search Strategies
Effect <- ExhaustiveSearch(pts,class,MaxOrder,measure,0)
SingleEffect <- Effect$SingleEffect
TwoEffect <- Effect$TwoEffect
ThreeEffect <- Effect$ThreeEffect
FourEffect <- Effect$FourEffect
FiveEffect <- Effect$FiveEffect

# Normalization
Effect <- NormalizationEffect(MaxOrder,SingleEffect,TwoEffect,ThreeEffect,FourEffect
                                ,FiveEffect,SaveFileName)
  
SingleEffect <- Effect$SingleEffect
TwoEffect <- Effect$TwoEffect
ThreeEffect <- Effect$ThreeEffect
FourEffect <- Effect$FourEffect
FiveEffect <- Effect$FiveEffect

}
