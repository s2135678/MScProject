# Converting mtx file into Seurat object 
# Yang et al (2021) 
# GSE163577
# 4 superior frontal cortex tissue  
# 10x Genomics v3
# Single nulcues 

# Set working directory
setwd("/Users/serachoi/Documents/Edinburgh/MScProject/Project/data/GSE163577")

#  Control 1
expression_matrix <- ReadMtx(mtx = "matrix.mtx.gz",
                             features = "features.tsv.gz",
                             cells = "barcodes.tsv.gz")
nc1 <- CreateSeuratObject(counts = expression_matrix, project = "Yang_et_al.NC1", min.cells = 3, min.features = 200)
nc1[["Age"]] <- "58" 
nc1[["Sex"]] <- "Male" 

#  Normal Control 2
expression_matrix <- ReadMtx(mtx = "matrix.mtx.gz",
                             features = "features.tsv.gz",
                             cells = "barcodes.tsv.gz")
nc6 <- CreateSeuratObject(counts = expression_matrix, project = "Yang_et_al.NC6", min.cells = 3, min.features = 200)
nc6[["Age"]] <- "77" 
nc6[["Sex"]] <- "Male" 

#  Normal Control 3
expression_matrix <- ReadMtx(mtx = "matrix.mtx.gz",
                             features = "features.tsv.gz",
                             cells = "barcodes.tsv.gz")
nc7 <- CreateSeuratObject(counts = expression_matrix, project = "Yang_et_al.NC7", min.cells = 3, min.features = 200)
nc7[["Age"]] <- "82" 
nc7[["Sex"]] <- "Male" 

#  Normal Control 4
expression_matrix <- ReadMtx(mtx = "matrix.mtx.gz",
                             features = "features.tsv.gz",
                             cells = "barcodes.tsv.gz")
nc8 <- CreateSeuratObject(counts = expression_matrix, project = "Yang_et_al.NC8", min.cells = 3, min.features = 200)
nc8[["Age"]] <- "79" 
nc8[["Sex"]] <- "Female" 


# Merge Seurat objects 
seur <- merge(nc1, y = c(nc6, nc7, nc8), add.cell.ids = c("NC1", "NC6", "NC7", "NC8"))
table(seur$orig.ident)

# Save seurat obejct 
saveRDS(seur, "/Users/serachoi/Documents/Edinburgh/MScProject/Project/data/Yang_et_al.RDS")
