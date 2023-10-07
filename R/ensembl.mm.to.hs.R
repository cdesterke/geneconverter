#' @title ensembl.mm.to.hs

#' this function take input vector of murine Ensembl identifiers and convert them
#' in human identifiers according Biomart database version 110

#' @usage library(geneconverter)
#' @usage mouse.ensembl<-c("ENSMUSG00000005672","ENSMUSG00000058488","ENSMUSG00000061353","ENSMUSG00000016494")
#' @usage ensembl.mm.to.hs(mouse.ensembl)
#' @examples library(geneconverter)
#' @examples mouse.ensembl<-c("ENSMUSG00000005672","ENSMUSG00000058488","ENSMUSG00000061353","ENSMUSG00000016494")
#' @examples ensembl.mm.to.hs(mouse.ensembl)

ensembl.mm.to.hs<-function(mouse.ensembl){
  suppressWarnings({
  # load "Biomart-110" database
  data("bm110")

  # package dependencies
  if(!require(dplyr)){install.packages("dplyr")}
  library(dplyr)

  # vector verification
  if (!is.vector(mouse.ensembl)){
    stop('"mouse.ensembl" need to be a vector with character elements !\n')
  }

  # program
  mouse.ensembl<-as.data.frame(mouse.ensembl)
  colnames(mouse.ensembl)<-"mm.id"
  mouse.ensembl%>%left_join(bm110,by="mm.id")->df
  return(df)
  })
  }
