\name{NotationName}

\alias{NotationName}

\title{
Notation of real SNP Name
}

\description{
If there are real SNP names which will be used for constructing graphs and further analysis, this function then replaces SNP indexes by real SNP names. 
}

\usage{
NotationName(MaxOrder, SingleEffect, TwoEffect, 
             ThreeEffect, FourEffect, FiveEffect, SNPNames = NA)
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
  \item{SNPNames}{
character or logical (NA). Names of SNPs. Row -> 1, Column -> SNP Name
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
SNPNames <- c("rs1366208","rs1950123","rs10485136","rs1484673",
              "rs1484433","rs1795462","rs10501558","rs2018041",
              "rs10489495","rs3846302","rs2801008","0","rs1773409",
              "rs4786670","rs2260614","rs1326298","rs9315726",
              "rs1582545","rs10505084","rs4763023")

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

# SNP Name Notation
Effect <- NotationName(MaxOrder,SingleEffect,TwoEffect,ThreeEffect,FourEffect
                         ,FiveEffect,SNPNames)
  
SingleEffect <- Effect$SingleEffect
TwoEffect <- Effect$TwoEffect
ThreeEffect <- Effect$ThreeEffect
FourEffect <- Effect$FourEffect
FiveEffect <- Effect$FiveEffect

}
