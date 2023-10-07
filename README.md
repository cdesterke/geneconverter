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

### convert murine gene symbol in human gene symbol: "gene.mm.to.hs"
```r
library(geneconverter)
mouse.gene<-c("Kit","Sca","Kl","Cd34","Flt3","Cxcl12")
gene.mm.to.hs(mouse.gene)
```
![res](https://github.com/cdesterke/geneconverter/blob/main/02.png)


### convert human Ensembl identifiers in murine ones: "ensembl.hs.to.mm"
```r
library(geneconverter)
human.ensembl<-c("ENSG00000157404","ENSG00000133116","ENSG00000122025","ENSG00000107562","ENSG00000174059")
ensembl.hs.to.mm(human.ensembl)
```
![res](https://github.com/cdesterke/geneconverter/blob/main/03.png)

### convert human Ensembl identifiers in murine ones: "ensembl.mm.to.hs"
```r
library(geneconverter)
mouse.ensembl<-c("ENSMUSG00000005672","ENSMUSG00000058488","ENSMUSG00000061353","ENSMUSG00000016494")
ensembl.mm.to.hs(mouse.ensembl)
```
![res](https://github.com/cdesterke/geneconverter/blob/main/04.png)

## REFERENCES:

> Fergal J Martin, Ensembl 2023 Nucleic Acids Res. 2023, 51(D1):D933-D941 PMID: 36318249 doi:10.1093/nar/gkac958
