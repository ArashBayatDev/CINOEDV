\name{CINOEDV-package}

\alias{CINOEDV-package}

\alias{CINOEDV}

\docType{package}

\title{
Co-Information based N-Order Epistasis Detector and Visualizer
}

\description{
A package for detecting and visualizing high-order epistatic interactions.
}

\details{
\tabular{ll}{
Package: \tab CINOEDV\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-05-02\cr
License: \tab GPL-2\cr
}

###############################
##     Normal Using type     ##
###############################

result <- CINOEDV_Main()

#### Please input the file name with its format (.mat) that saves SNP data.
# test.mat

#### Please input the maximum order (1/2/3/4/5), and 3 is the Recommendation Option.
# 3

#### Please input the  1  ratio threshold.
# 1

####  Please input the  2  ratio threshold.
# 0.5

####  Please input the  3  ratio threshold.
# 0.8

####  Please input the  1  number threshold.
# 10

####  Please input the  2  number threshold.
# 20

####  Please input the  3  number threshold.
# 8

#### Please select the evaluation measure (1/2/3), and 1 is the Recommendation Option.
# 1

#### Please input the name of such file with (.mat) format.
# NA

}

\author{
Junliang Shang \email{shangjunliang110@163.com}
}

\examples{

rm(list=ls())

File1 <- system.file("extdata","test.mat",package="CINOEDV")
File2 <- system.file("extdata","test1.mat",package="CINOEDV")
File3 <- system.file("extdata","test_Name.mat",package="CINOEDV")
File4 <- system.file("extdata","test1_Name.mat",package="CINOEDV")

FileName <- c(File1,File2)
MaxOrder <- 2
RatioThreshold <- c(1,1)
NumberThreshold <- c(10,10)
measure <- 1
SNPNameFileName <- c(File3,File4)

BatCINOEDV(FileName, MaxOrder, RatioThreshold, NumberThreshold, measure, SNPNameFileName)


###################
##     Second    ##
###################

# Install Packages
# InstallPackage()

# Check SNP data
FileName <- system.file("extdata","test.mat",package="CINOEDV")
Data <- InputData(FileName)
pts <- Data$pts
class <- Data$class

# Check MaxOrder
MaxOrder <- 2
TestMaxOrder(as.character(MaxOrder))
MaxOrder <- as.numeric(MaxOrder)

# Check RatioThreshold
RatioThreshold <- c(1,1)
TestRatioThreshold(MaxOrder,as.character(RatioThreshold))
RatioThreshold <- as.numeric(RatioThreshold)

# Check NumberThreshold
NumberThreshold <- c(10,10)
TestNumberThreshold(MaxOrder,as.character(NumberThreshold))
NumberThreshold <- as.numeric(NumberThreshold)

# Check measure
measure <- 1

# Check SNPNameFileName
SNPNameFileName <- system.file("extdata","test_Name.mat",package="CINOEDV")
SNPNames <- TestSNPNameFile(ncol(pts),as.character(SNPNameFileName))
SNPNames <- SNPNames$SNPNames

# Define file name which is used for saving results. 
SaveFileName <- "TEST_RESULT_"

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

# Collect Vertices and Edges
GraphData <- NetworkData(SingleEffect,TwoEffect,ThreeEffect,FourEffect,
                           FiveEffect,RatioThreshold,NumberThreshold)
Edges <- GraphData$edges
Vertices <- GraphData$vertices

# Construct Complete Graph
ConstructCompleteGraph(Vertices,Edges,6,SaveFileName)

# Plot Top Effects
TpEffect <- PlotTopEffects(Vertices,20,SaveFileName)
TopEffect <- TpEffect$TopEffect
CombinationEffect <- TpEffect$CombinationEffect

# Degree Analysis
Degrees <- DegreeAnalysis(Vertices,Edges,SaveFileName)
Degrees <- Degrees$Degrees
print(Degrees)

# Split subgraphs
SubgraphSNPs <- SubgraphSplit(Vertices,Edges)
SubgraphSNPs <- SubgraphSNPs$SubgroupSNPs

# heatmap Factor  
HeatMapFactors <- HeatMapFactor(pts,class,factor = c(5, 8),SaveFileName,Title ="")
HeatMapFactors <- HeatMapFactors$HeatMapFactors

}

\keyword{ package }
