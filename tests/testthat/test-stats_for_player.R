test_that("stats_for_player returns a gt table on valid input",{
  #call function on valid input
  tbl <- stats_for_player(TDMZ443games, "TDMZ443")

  #returns a gt table
  expect_s3_class(tbl, "gt_tbl")


  #call function on valid input
  tbl <- stats_for_player(TDMZ443games, "TDMZ443", game = "8DF7C4C211F1560E0ED84EA271D83282" )

  #returns a gt table
  expect_s3_class(tbl, "gt_tbl")
})


test_that("stats_for_player assertions catch invalid inputs on df", {
  #df is not a data_frame
  expect_error(stats_for_player(12345, "TDMZ443"), "Assertion on 'df' failed")

  #df is not a data_frame
  expect_error(stats_for_player(12345, name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is not a data_frame
  expect_error(stats_for_player("TDMZ443games", name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")

  #df is missing
  expect_error(stats_for_player(NA_character_, "TDMZ443"), "Assertion on 'df' failed")

  #df is missing
  expect_error(stats_for_player(NA_character_, name = "TDMZ443", game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'df' failed")
})


test_that("stats_for_player assertions catch invalid inputs on name", {
  #name is not a string
  expect_error(stats_for_player(TDMZ443games, 12345), "Assertion on 'name' failed")

  #name is not a string
  expect_error(stats_for_player(TDMZ443games, name = 12345, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")

  #name is not a string
  expect_error(stats_for_player(TDMZ443games, c("what","a","save")), "Assertion on 'name' failed")

  #name is not a string
  expect_error(stats_for_player(TDMZ443games, name = c("what","a","save"), game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")


  #name is missing
  expect_error(stats_for_player(TDMZ443games, NA_character_), "Assertion on 'name' failed")

  #name is missing
  expect_error(stats_for_player(TDMZ443games, name = NA_character_, game = '8DF7C4C211F1560E0ED84EA271D83282'), "Assertion on 'name' failed")
})


test_that("stats_for_player assertions catch invalid inputs on game", {
  #game is not a string
  expect_error(stats_for_player(TDMZ443games, name = "TDMZ443", game = 12345), "Assertion on 'game' failed")

  #game is not a string
  expect_error(stats_for_player(TDMZ443games, name = 'TDMZ443', game = c("what","a","save")), "Assertion on 'game' failed")

})

test_that("stats_for_player assertions catches name and game entries that do not exist", {
  #game is not in the dataset
  expect_error(stats_for_player(TDMZ443games, name = "TDMZ443", game = "8DF7C4C211F60E0ED84EA271D83282"), "Assertion on 'game' failed")

  #name is not in the dataset
  expect_error(stats_for_player(TDMZ443games, name = 'TDMZ453', game = "8DF7C4C211F1560E0ED84EA271D83282"), "Assertion on 'name' failed")

})
