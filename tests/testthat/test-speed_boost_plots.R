test_that("speed_boost_plots returns a patchwork object", {
  #call function on valid input
  result <- speed_boost_plots(TDMZ443games, name = "TDMZ223", game = "D96D303C11F15617E1F59A8137901B26")

  #check if output is patchwork object
  expect_s3_class(result, "patchwork")
})


test_that("speed_boost_plots contains two plots", {
  #call function on valid input
  result <- speed_boost_plots(TDMZ443games, name = "TDMZ223", game = "D96D303C11F15617E1F59A8137901B26")

  #check if two plots are present
  expect_equal(length(result$patches$plots) + 1, 2)
})



test_that("speed_boost_plots assertions catch invalid inputs on df", {
  #df is not a data_frame
  expect_error(speed_boost_plots(12345, name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is not a data_frame
  expect_error(speed_boost_plots("TDMZ443games", name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is missing
  expect_error(speed_boost_plots(NA_character_, name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")
})


test_that("speed_boost_plots assertions catch invalid inputs on name", {
  #name is not a string
  expect_error(speed_boost_plots(TDMZ443games, name = 12345, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")

  #name is not a string
  expect_error(speed_boost_plots(TDMZ443games, name = c("what","a","save"), game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")

  #name is missing
  expect_error(speed_boost_plots(TDMZ443games, name = NA_character_, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")
})


test_that("speed_boost_plots assertions catch invalid inputs on game", {
  #game is not a string
  expect_error(speed_boost_plots(TDMZ443games, name = "TDMZ443", game = 12345), "Assertion on 'game' failed")

  #game is not a string
  expect_error(speed_boost_plots(TDMZ443games, name = 'TDMZ443', game = c("what","a","save")), "Assertion on 'game' failed")

})

