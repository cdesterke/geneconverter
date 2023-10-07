#' @title ensembl.hs.to.mm

#' this function take input vector of human Ensembl identifier and convert them
#' in murine identifiers according Biomart database version 110

#' @usage library(geneconverter)
#' @usage human.ensembl<-c("ENSG00000157404","ENSG00000133116","ENSG00000122025","ENSG00000107562","ENSG00000174059")
#' @usage ensembl.hs.to.mm(human.ensembl)
#' @examples library(geneconverter)
#' @examples human.ensembl<-c("ENSG00000157404","ENSG00000133116","ENSG00000122025","ENSG00000107562","ENSG00000174059")
#' @examples ensembl.hs.to.mm(human.ensembl)

ensembl.hs.to.mm<-function(human.ensembl){
  suppressWarnings({
  # load "Biomart-110" database
  data("bm110")

  # package dependencies
  if(!require(dplyr)){install.packages("dplyr")}
  library(dplyr)

  # vector verification
  if (!is.vector(human.ensembl)){
    stop('"human.ensembl" need to be a vector with character elements !\n')
  }

  # program
  human.ensembl<-as.data.frame(human.ensembl)
  colnames(human.ensembl)<-"hs.id"
  human.ensembl%>%left_join(bm110,by="hs.id")->df
  return(df)
  })
  }
