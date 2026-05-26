test_that("compare_teams returns a gt table on valid input",{
  #call function on valid input
  tbl <- compare_teams(TDMZ443games, game = "8DF7C4C211F1560E0ED84EA271D83282" )

  #returns a gt table
  expect_s3_class(tbl, "gt_tbl")
})


test_that("compare_teams assertions catch invalid inputs on df", {
  #df is not a data_frame
  expect_error(compare_teams(12345, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is not a data_frame
  expect_error(compare_teams("TDMZ443games", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is missing
  expect_error(compare_teams(NA_character_, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")
})

test_that("compare_teams assertions catch invalid inputs on game", {
  #game is not a string
  expect_error(compare_teams(TDMZ443games, game = 12345), "Assertion on 'game' failed")

  #game is not a string
  expect_error(compare_teams(TDMZ443games, game = c("what","a","save")), "Assertion on 'game' failed")

  #game is missing
  expect_error(compare_teams(TDMZ443games, NA_character_), "Assertion on 'game' failed")
})
