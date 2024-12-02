
#' This is package
#' @param dat The input dataframe
#' @title This to apply lm model to data
#' @return summary of lm model
#' @example regress(dat)
#' @export
#' @author author Fadhaa Ali
#' @description
#' This is short description
#' @references Nagarajan R, Scutari M, Lebre S (2013). "Bayesian Networks in R with Applications in Systems Biology". Springer.
#' @concept Linear Regression.
#' @source The data comes from simulation.




regress<-function(dat){
  colname<-colnames(dat)
  ex<-paste(colname[3:length(colname)],collapse="+")
  term<-paste(c(colname[1],ex),collapse="~")
  model<-lm(term,data=data.frame(dat))
  return(model)}
