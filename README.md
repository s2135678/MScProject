# The normal ageing of human brain endothelial cells

This MSc project aims to understand the molecular and cellular changes that occur in human brain endothelial cells (ECs) during the ageing process using single-cell transcriptomic data analysis (scRNA-seq). To achieve this, two comparisons were performed: 

**1. Young vs. Old adult brain ECs** 
* This section compares the single-cell transcriptome of young (aged 30-65) and old (aged 70-90) brain ECs using the scRNA-seq workflow. 
* This will help us better understand the healthy ageing process of the brain vasculature and allow us to differentiate this from the accelerated ageing process.

**2. ES-derived ECs vs. Young adult brain ECs** 
* Here, the single-cell trancriptome of young brain ECs and human embryonic stem cell-derived ECs (ES-derived ECs) are compared. 
* The results from this will help us test the suitability of ES-derived ECs as models for brain ECs and allow us to design better protocols for generating brain ECs that closely resemble ECs derived from pluripotent sources *in vitro*. 

The datasets were mostly obtained from GEO and Allen Brain Atlas. All analyses were performed using bioinformatics tools from Seurat package in R. All files are organised into sub-directories: data, and src.

## data 

Contains both the raw and processed scRNA-seq count matrix, mostly in .RDS format. 

## src

The R markdown files are orgniased into the relevant comparisons. All codes for the first comparison can be found in the section named 'age', while the 'ES-derived' repository contains all code files for the second comparison. In general, the code files are organised into different steps of the scRNA-seq analysis workflow. The steps are: 

1. Quality control
2. Normalisation
3. Feature selection 
4. Linear dimensional reduction
5. Clustering 
6. Differential gene expression analysis 
7. Cluster annotation

