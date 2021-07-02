# Converting mtx file into Seurat object 
# Normal Control 3
setwd("/Users/serachoi/Documents/Edinburgh/MScProject/Project")
expression_matrix <- ReadMtx(mtx = "/data/GSM4775573_NC3_matrix.mtx.gz",
                             features = "/data/GSM4775573_NC3_features.tsv.gz",
                             cells = "/data/GSM4775573_NC3_barcodes.tsv.gz")
nc3 <- CreateSeuratObject(counts = expression_matrix, project = "NC3", min.cells = 3, min.features = 200)

# Normal Control 16
expression_matrix <- ReadMtx(mtx ="/data/GSM4775579_NC16_matrix.mtx.gz",
                             features = "/data/GSM4775579_NC16_features.tsv.gz",
                             cells = "/data/GSM4775579_NC16_barcodes.tsv.gz")
nc16 <- CreateSeuratObject(counts = expression_matrix, project = "NC16", min.cells = 3, min.features = 200)

# Normal Control 17
expression_matrix <- ReadMtx(mtx ="/data/GSM4775580_NC17_matrix.mtx.gz",
                             features = "/data/GSM4775580_NC17_features.tsv.gz",
                             cells = "/data/GSM4775580_NC17_barcodes.tsv.gz")
nc17 <- CreateSeuratObject(counts = expression_matrix, project = "NC17", min.cells = 3, min.features = 200)

# Normal Control 18
expression_matrix <- ReadMtx(mtx ="/data/GSM4775581_NC18_matrix.mtx.gz",
                             features = "/data/GSM4775581_NC18_features.tsv.gz",
                             cells = "/data/GSM4775581_NC18_barcodes.tsv.gz")
nc18 <- CreateSeuratObject(counts = expression_matrix, project = "NC18", min.cells = 3, min.features = 200)

# Merge Seurat objects 
svd <- merge(nc3, y = c(nc16, nc17, nc18), add.cell.ids = c("NC3", "NC16", "NC17", "NC18"))
table(svd$orig.ident)
