#Load library
library(Seurat)
library(ggplot2)
library(dplyr)
library(SingleCellExperiment)

#Load Seurat object 
seur <- readRDS("/Users/serachoi/Documents/Edinburgh/MScProject/Project/data/srt_anno_01.RDS")

#Subset for BA4 and ECs
ecpc <- subset(seur, ident=c("Endothelial-Pericyte_1", "Endothelial-Pericyte_2"))
ecpc <- subset(ecpc, subset=Tissue=="BA4")
#saveRDS(ecpc, "data/processed/ecpc.RDS")

#QC
VlnPlot(ecpc, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)
plot1 <- FeatureScatter(ecpc, feature1 = "nCount_RNA", feature2 = "percent.mt")
plot2 <- FeatureScatter(ecpc, feature1 = "nCount_RNA", feature2 = "nFeature_RNA")
plot1 + plot2





#Visualisation
DimPlot(ecpc, reduction = "umap")
DimPlot(ecpc, reduction = "pca")
DimPlot(ecpc, reduction = "tsne")

FeaturePlot(object = ecpc, features = "HES4")
VariableFeaturePlot(object = ecpc)




