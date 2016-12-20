.elements <- list('I' = 1,
                  'II' =2,
                  'III' = 3,
                  'IV' = 4,
                  'V' = 5,
                  'VI' = 6,
                  'VII' = 7,
                  'VIII' = 8,
                  'IV' = 9,
                  'X' = 10,
                  'L' = 50,
                  'C' = 100,
                  'D' = 500,
                  'M' = 1000)
elements <- c(.elements,
              setNames(object = as.list(names(.elements)),
                       unlist(.elements,use.names = FALSE)))


as.String <- function(x){
  if(!inherits(x, "String")) class(x) <- c("String", class(x))
  x
}

is.String <- function(x){
  inherits(x, "String")
}

`+.String` <- function(e1, e2){
  foo <- function(s1,s2){
    paste0(s1,s2,collapse = "")
  }
  as.String(foo(e1,e2))
}

`*.String` <- function(e1,e2){
  if(!inherits(e2,"integer")&!inherits(e2,'numeric'))
    stop("e2 must be a integer")
  as.String(paste0(rep(x = e1,e2),collapse = ''))
}

