# Converting mtx file into Seurat object 
# Lau et al (2020) 
# GSE157827
# 5 prefrontal cortex tissues 

# Set working directory
setwd("/Users/serachoi/Documents/Edinburgh/MScProject/Project/data/GSE157827")

#  Normal Control 7
expression_matrix <- ReadMtx(mtx = "GSM4775574_NC7_matrix.mtx.gz",
                             features = "GSM4775574_NC7_features.tsv.gz",
                             cells = "GSM4775574_NC7_barcodes.tsv.gz")
nc7 <- CreateSeuratObject(counts = expression_matrix, project = "Lau_et_al.NC7", min.cells = 3, min.features = 200)
nc7[["Age"]] <- "90" 
nc7[["Sex"]] <- "Male" 

#  Normal Control 11
expression_matrix <- ReadMtx(mtx = "GSM4775575_NC11_matrix.mtx.gz",
                             features = "GSM4775575_NC11_features.tsv.gz",
                             cells = "GSM4775575_NC11_barcodes.tsv.gz")
nc11 <- CreateSeuratObject(counts = expression_matrix, project = "Lau_et_al.NC11", min.cells = 3, min.features = 200)
nc11[["Age"]] <- "87" 
nc11[["Sex"]] <- "Male" 

#  Normal Control 12
expression_matrix <- ReadMtx(mtx = "GSM4775576_NC12_matrix.mtx.gz",
                             features = "GSM4775576_NC12_features.tsv.gz",
                             cells = "GSM4775576_NC12_barcodes.tsv.gz")
nc12 <- CreateSeuratObject(counts = expression_matrix, project = "Lau_et_al.NC12", min.cells = 3, min.features = 200)
nc12[["Age"]] <- "85" 
nc12[["Sex"]] <- "Male" 

#  Normal Control 14
expression_matrix <- ReadMtx(mtx = "GSM4775577_NC14_matrix.mtx.gz",
                             features = "GSM4775577_NC14_features.tsv.gz",
                             cells = "GSM4775577_NC14_barcodes.tsv.gz")
nc14 <- CreateSeuratObject(counts = expression_matrix, project = "Lau_et_al.NC14", min.cells = 3, min.features = 200)
nc14[["Age"]] <- "74" 
nc14[["Sex"]] <- "Female" 

#  Normal Control 15
expression_matrix <- ReadMtx(mtx = "GSM4775578_NC15_matrix.mtx.gz",
                             features = "GSM4775578_NC15_features.tsv.gz",
                             cells = "GSM4775578_NC15_barcodes.tsv.gz")
nc15 <- CreateSeuratObject(counts = expression_matrix, project = "Lau_et_al.NC15", min.cells = 3, min.features = 200)
nc15[["Age"]] <- "79" 
nc15[["Sex"]] <- "Female" 


# Merge Seurat objects 
seur <- merge(nc7, y = c(nc11, nc12, nc14, nc15), add.cell.ids = c("NC7", "NC11", "NC12", "NC14", "NC15"))
table(seur$orig.ident)

# Save seurat obejct 
saveRDS(seur, "/Users/serachoi/Documents/Edinburgh/MScProject/Project/data/Lau_et_al.RDS")
