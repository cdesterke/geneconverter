#' @title gene.mm.to.hs

#' this function take input vector of murine gene symbols and convert them
#' in human gene symbols according Biomart database version 110

#' @usage library(geneconverter)
#' @usage mouse.gene<-c("Kit","Sca","Kl","Cd34","Flt3","Cxcl12")
#' @usage gene.mm.to.hs(mouse.gene)
#' @examples library(geneconverter)
#' @examples mouse.gene<-c("Kit","Sca","Kl","Cd34","Flt3","Cxcl12")
#' @examples gene.mm.to.hs(mouse.gene)


gene.mm.to.hs<-function(mouse.gene){
  suppressWarnings({
  # load "Biomart-110" database
  data("bm110")

  # package dependencies
  if(!require(dplyr)){install.packages("dplyr")}
  library(dplyr)

  # vector verification
  if (!is.vector(mouse.gene)){
    stop('"mouse.gene" need to be a vector with character elements !\n')
  }

  # program
  mouse.gene<-as.data.frame(mouse.gene)
  colnames(mouse.gene)<-"gene.mm"
  mouse.gene%>%left_join(bm110, by="gene.mm")->df
  return(df)
  })
}
