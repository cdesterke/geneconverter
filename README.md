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

> Fergal J Martin, M Ridwan Amode, Alisha Aneja, Olanrewaju Austine-Orimoloye, Andrey G Azov, If Barnes, Arne Becker, Ruth Bennett, Andrew Berry, Jyothish Bhai, Simarpreet Kaur Bhurji, Alexandra Bignell, Sanjay Boddu, Paulo R Branco Lins, Lucy Brooks, Shashank Budhanuru Ramaraju, Mehrnaz Charkhchi, Alexander Cockburn, Luca Da Rin Fiorretto, Claire Davidson, Kamalkumar Dodiya, Sarah Donaldson, Bilal El Houdaigui, Tamara El Naboulsi, Reham Fatima, Carlos Garcia Giron, Thiago Genez, Gurpreet S Ghattaoraya, Jose Gonzalez Martinez, Cristi Guijarro, Matthew Hardy, Zoe Hollis, Thibaut Hourlier, Toby Hunt, Mike Kay, Vinay Kaykala, Tuan Le, Diana Lemos, Diego Marques-Coelho, José Carlos Marugán, Gabriela Alejandra Merino, Louisse Paola Mirabueno, Aleena Mushtaq, Syed Nakib Hossain, Denye N Ogeh, Manoj Pandian Sakthivel, Anne Parker, Malcolm Perry, Ivana Piližota, Irina Prosovetskaia, José G Pérez-Silva, Ahamed Imran Abdul Salam, Nuno Saraiva-Agostinho, Helen Schuilenburg, Dan Sheppard, Swati Sinha, Botond Sipos, William Stark, Emily Steed, Ranjit Sukumaran, Dulika Sumathipala, Marie-Marthe Suner, Likhitha Surapaneni, Kyösti Sutinen, Michal Szpak, Francesca Floriana Tricomi, David Urbina-Gómez, Andres Veidenberg, Thomas A Walsh, Brandon Walts, Elizabeth Wass, Natalie Willhoft, Jamie Allen, Jorge Alvarez-Jarreta, Marc Chakiachvili, Bethany Flint, Stefano Giorgetti, Leanne Haggerty, Garth R Ilsley, Jane E Loveland, Benjamin Moore, Jonathan M Mudge, John Tate, David Thybert, Stephen J Trevanion, Andrea Winterbottom, Adam Frankish, Sarah E Hunt, Magali Ruffier, Fiona Cunningham, Sarah Dyer, Robert D Finn, Kevin L Howe, Peter W Harrison, Andrew D Yates, and Paul Flicek
Ensembl 2023
Nucleic Acids Res. 2023, 51(D1):D933-D941
PMID: 36318249
doi:10.1093/nar/gkac958
