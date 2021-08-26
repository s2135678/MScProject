# Ageing in human brain endothelial cells
This MSc project aims to understand the ageing process in human brain endothelial cells using scRNA-seq analysis. To achieve this, two comparisons will be performed:

**1. Young vs. Old adult brain ECs** 
* This comparison will help us better understand the healthy ageing of brain vasculature and allow us to differentiate this from accelerated ageing.

**2. ES-derived ECs vs. Young adult brain ECs** 
* This comparison will help us test the suitability of ES-derived ECs as models for brain ECs and allow us to design better protocols for generating brain ECs from pluripotent sources *in vitro*. 

The files are organised into 4 sub-directories: data, outs, src, and docs. The analysis closely follows the Seurat workflow, using both published and unpublished datsets. 

## data 

Contains both raw and processed scRNA-seq count matrix, mostly in .RDS format. 

## src

The code is organised into different steps of the scRNA-seq analysis workflow. In general, the steps are:

1. Quality control
2. Normalisation
3. Feature selection 
4. Linear dimensional reduction
5. Clustering 
6. Differential gene expression analysis 
7. Cluster annotation

## outs

Relevant plots and diagrams can be found here. 

## docs
