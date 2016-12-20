source("./helper.R")
#' @author HatMatrix
#' @param roman,character
#' @name roman2num
#' @description 把罗马数字转换成阿拉伯数字
#' @return integer,返回罗马数字对应的阿拉伯数字
#' @example 
#' roman2num("II)
roman2int <- function(roman){
  
  as.integer(elements[[roman]])
}