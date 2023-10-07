#' @title gene.hs.to.mm

#' this function take input vector of human gene symbols and convert them
#' in mouse gene symbols according Biomart  database version 110

#' @usage library(geneconverter)
#' @usage human.gene<-c("FLT3","CXCR4","CXCR7","CD34","KIT","KL","CXCL12")
#' @usage gene.hs.to.mm(human.gene)
#' @examples library(geneconverter)
#' @examples human.gene<-c("FLT3","CXCR4","CXCR7","CD34","KIT","KL","CXCL12")
#' @examples gene.hs.to.mm(human.gene)


gene.hs.to.mm<-function(human.gene){
  suppressWarnings({

  # load "Biomart-110" database
  data("bm110")

  # package dependencies
  if(!require(dplyr)){install.packages("dplyr")}
  library(dplyr)

  # vector verification
  if (!is.vector(human.gene)){
    stop('"human.gene" need to be a vector with character elements !\n')
  }

  # program
  human.gene<-as.data.frame(human.gene)
  colnames(human.gene)<-"hs.gene"
  human.gene%>%left_join(bm110, by="hs.gene")->df
  return(df)
  })
}
