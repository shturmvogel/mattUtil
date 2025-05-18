#' Convert Matrix or Data Frame to LaTeX Matrix Format
#'
#' This function takes a matrix or data frame and converts it into a LaTeX-compatible string 
#' using the specified LaTeX matrix environment (e.g., "matrix", "bmatrix", "pmatrix").
#' The resulting string formats each row as a line of entries separated by \code{&}, with rows
#' separated by LaTeX's \code{\\}. The output is printed using \code{cat()}.
#'
#' @param obj A matrix or data frame to be converted.
#' @param matArg A character string indicating the LaTeX matrix environment to use 
#' (e.g., \code{"matrix"}, \code{"bmatrix"}, \code{"pmatrix"}).
#'
#' @return None. The function prints the LaTeX-formatted matrix string directly to the console.
#'
#' @examples
#' mat <- matrix(1:9, nrow = 3, byrow = TRUE)
#' out(mat, "bmatrix")
#'
#' @export
out= function(obj, matArg){
  output <- apply(obj, 1, function(row) paste(row, collapse = " & "))
  output <- paste(output, collapse = " \\\\ \n")
  output <- paste0("\\begin{", matArg, "}\n", output, " \\\\ \n\\end{", matArg, "}")
  cat(output)
}
