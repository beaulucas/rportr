test_that("creates project directory", {
  project_dir <- fs::path_temp("tmp")
  setup_project(path = project_dir, project_type = "ds", simple = TRUE)
  fs::dir_ls(project_dir)
  num_dir_created <- length(fs::dir_ls(project_dir))
  expect_gt(num_dir_created, 0)
})
