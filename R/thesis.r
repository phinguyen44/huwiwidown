#' Creates an R Markdown PDF Thesis document
#'
#' This is a function called in output in the YAML of the driver Rmd file to
# 'specify using the HU Berlin School of Business and Economics LaTeX
#' template.
#'
#' @export
#' @param toc A Boolean (TRUE or FALSE) specifying whether table of contents
#' should be created
#' @param toc_depth A positive integer
#' @param highlight Syntax highlighting style. Supported styles include
#' "default", "tango", "pygments", "kate", "monochrome", "espresso", "zenburn",
#' and "haddock". Pass NULL to prevent syntax highlighting.
#' @return A modified \code{pdf_document} based on the HU Berlin School of
#' Business and Economics LaTeX template.
#' @examples
#' \dontrun{
#'  output: huwiwi::thesis_pdf
#' }
thesis_pdf <- function(toc = TRUE, toc_depth = 3, highlight = "default", ...) {

  base <- bookdown::pdf_book(
    template    = "template.tex",
    toc         = toc,
    toc_depth   = toc_depth,
    highlight   = highlight,
    keep_tex    = TRUE,
    pandoc_args = "--top-level-division=chapter",
    ...
  )

  # Mostly copied from knitr::render_sweave
  base$knitr$opts_chunk$comment   <- NA
  base$knitr$opts_chunk$fig.align <- "center" # TODO: check if need to be commented

  old_opt <- getOption("bookdown.post.latex")
  options(bookdown.post.latex = fix_envs)
  on.exit(options(bookdown.post.late = old_opt))

  return(base)
}

# TODO: toc? tof? 
