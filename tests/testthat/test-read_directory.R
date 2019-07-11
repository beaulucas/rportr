context("Reading in files from a directory")

test_that("locates and reads files", {
  dir.create("./tmp")
  write.csv(mtcars, "./tmp/mtcars.csv")
  saveRDS(mtcars, "./tmp/mtcars.rds", compress = FALSE)
  read_directory("./tmp")
  unlink("./tmp", recursive = TRUE)
})
