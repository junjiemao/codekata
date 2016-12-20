int2roman <- function(input){
  ints = c(1000, 900,  500, 400, 100,  90, 50,  40, 10,  9,   5,  4,   1)
  nums = c('M',  'CM', 'D', 'CD','C', 'XC','L','XL','X','IX','V','IV','I')
  result = as.String("")
  for (i in 1:length(ints)){
    count = as.integer(input / ints[i])
    result = result+as.String(nums[i])*count
    input = input-ints[i] * count
  }
  result
}

