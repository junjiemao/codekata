context("测试罗马数字转阿拉伯数字")
test_that(desc = "10以内的数字测试",{
  expect_equal(roman2int("I"),expected = 1)
  expect_equal(roman2int("II"),expected = 2)
})