context("Reading in files from a directory")

test_that("locates and reads files", {
  dir.create("./tmp")
  test_df <- mtcars %>%
    tibble::rownames_to_column(., "model") %>%
    tibble::as_tibble()
  readr::write_csv(test_df, "./tmp/mtcars_1.csv")
  readr::write_rds(test_df, "./tmp/mtcars_2.rds")
  read_directory("./tmp")
  typeof(mtcars_1)
  expect_type(mtcars_1, "list")
  expect_type(mtcars_2, "list")
  unlink("./tmp", recursive = TRUE)
})
