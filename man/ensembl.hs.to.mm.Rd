% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ensembl.hs.to.mm.R
\name{ensembl.hs.to.mm}
\alias{ensembl.hs.to.mm}
\title{ensembl.hs.to.mm
this function take input vector of human Ensembl identifier and convert them
in murine identifiers according Biomart database version 110}
\usage{
library(geneconverter)

human.ensembl<-c("ENSG00000157404","ENSG00000133116","ENSG00000122025","ENSG00000107562","ENSG00000174059")

ensembl.hs.to.mm(human.ensembl)
}
\description{
ensembl.hs.to.mm
this function take input vector of human Ensembl identifier and convert them
in murine identifiers according Biomart database version 110
}
\examples{
library(geneconverter)
human.ensembl<-c("ENSG00000157404","ENSG00000133116","ENSG00000122025","ENSG00000107562","ENSG00000174059")
ensembl.hs.to.mm(human.ensembl)
}
