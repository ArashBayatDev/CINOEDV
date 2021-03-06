\name{PSOSearch}

\alias{PSOSearch}

\title{
PSO Search
}

\description{
PSO based method for computing main effects of selected SNPs and interaction effects of selected SNP-combinations within the maximum order.
}

\usage{
PSOSearch(pts,class,MaxOrder=3,Population=1000,Iteration=100, 
           c1=2,c2=2,TopSNP=10,measure=1,alpha=0)
}

\arguments{
  \item{pts}{
matrix. SNP data. Each row represents a sample. Each column represents a SNP. For the element, 1 -> AA, 2 -> Aa, 3 -> aa.
}
  \item{class}{
matrix. Class labels of samples. It only has one row. Each column represents a class label. For the element, 1 -> case, 2-> control.
}
  \item{MaxOrder}{
numeric. The considered maximum order of epistatic interactions. It must be setted as 1, 2, 3, 4, or 5.
}
  \item{Population}{
numeric. The number of particles. For example, Population=1000.
}
  \item{Iteration}{
numeric. The number of iterations. For example, Iteration=100.
}
  \item{c1}{
numeric. The acceleration factor of individual experience. For example, c1=2.
}
  \item{c2}{
numeric. The acceleration factor of global experience. For example, c2=2.
}
  \item{TopSNP}{
numeric. The selected SNPs with top indexes. For example, TopSNP=10.
}
  \item{measure}{
numeric. The used evaluation measure. 1 -> the classic co-information measure; 2 -> the normalized co-information measure; 3 -> TingHu's co-informationn measure.
}
  \item{alpha}{
numeric. The lower threshold of effects, either main effects or interaction effects, which must be higher or equal to 0, By default, alpha <- 0.
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
Pop <- 10
Iter <- 10
c1 <- 2
c2 <- 2
TopSNP <- 10
measure <- 1
alpha <- 0
Effect <- PSOSearch(pts, class, MaxOrder, Pop, Iter, c1, c2, TopSNP, measure, alpha)
SingleEffect <- Effect$SingleEffect
TwoEffect <- Effect$TwoEffect
ThreeEffect <- Effect$ThreeEffect
FourEffect <- Effect$FourEffect
FiveEffect <- Effect$FiveEffect
}
