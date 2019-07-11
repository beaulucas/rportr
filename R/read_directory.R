#' Read delimited files and/or rds files from a directory
#'
#' @param directory_path
#'
#' @return
#' @export
#'
#' @examples
read_directory <- function(directory_path) {
  file_paths <- list.files(directory_path, full.names = TRUE)

  for (file_path in file_paths) {
    file_format <- tools::file_ext(file_path)
    tibble_name <- basename(file_path) %>% sub(".rds$|.csv$", "", .)
    if (file_format == "csv") {
      tbl <- readr::read_csv(file_path)
    }
    else if (file_format == "rds") {
      tbl <- readr::read_rds(file_path)
    }
    else {
      warning(paste0(file_path, " is invalid file type."))
    }
    assign(tibble_name, tbl)
    message(paste0(file_path, " read in as variable: ", tibble_name))
  }
}
