#' Setup data science project in R project folder
#'
#' @param path The location to create project skeleton. If using inside R project, will create in parent directory of project.
#' @param project_type The type of project skeleton to create.
#' @param simple If TRUE, the default, builds simpler skeleton with less directories.
#' @return
#' @export
#'
#' @examples \dontrun{read_directory()}
setup_project <- function(path = ".", project_type = "ds", simple = TRUE){
  paste0("Hello")
  simple_dirs <- c("data", "reports", "scripts")
  simple_files <- c("README.md")
  fs::dir_create(path = path, simple_dirs)
}
