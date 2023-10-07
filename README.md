# geneconverter
## geneconverter: a R-package converting gene symbol and Ensembl id between Homo sapiens and Mus musculus species


### package installation
```r
library(devtools)
install_github("cdesterke/geneconverter")
```
### description
geneconverter R-package based on Ensembl-Biomart database version 110 allows to convert gene symbol or Ensembl identifiers between Homo sapiens and Mus musculus species. This package is composed of four function according input data: human gene symbols, human Ensembl identifiers, murine gene symbols, murine Ensembl identifiers.

### convert human gene symbol in murine gene symbol: "gene.hs.to.mm"
```r
library(geneconverter)
human.gene<-c("FLT3","CXCR4","CXCR7","CD34","KIT","KL","CXCL12")
gene.hs.to.mm(human.gene)
```
![res](https://github.com/cdesterke/geneconverter/blob/main/01.png)
