#' Create a Module that conforms to the Instructure Canvas API
#'
#' @description Create an Canvas Module using rmarkdown
#' 
#'
#' @param ... Arguments to \code{rmarkdown::html_document}
#' @param keep_md Should the raw md files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param fig_caption Should figure captions be enabled?
#' @param toc Should a table of contents be created?
#' @param template The TeX template used
#' @param format The format of the document
#' @param highlight Highlight color template for code chunks
#' @return R Markdown output format to pass to \code{rmarkdown::render}
#'
#' @importFrom rmarkdown html_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown includes
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyModule.Rmd", template = "canvas_module", package = "DODschools")
#' }
#'
#' @export
canvas_module <- function(...,
                          keep_md = !FALSE,
                          md_extensions = c("-autolink_bare_uris"),
                          fig_caption = TRUE,
                          toc = TRUE,
                          highlight = 'default') {
  
  can_mod <- system.file("rmarkdown",
                         'templates',
                         "canvas_module",
                         "resources",
                         "canvas_module.html",
                         package = "DODschools")
  
  base <- inherit_html_document(...,
                                template = "default",
                                fig_caption = fig_caption,
                                keep_md = keep_md,
                                toc = toc,
                                highlight = highlight,
                                include = rmarkdown::includes(in_header = system.file("rmarkdown", 
                                                                                      "templates",
                                                                                      "canvas_module",
                                                                                      "resources",
                                                                                      "js.html",
                                                                                      package = "DODschools")),
                                                              before_body = system.file("rmarkdown", 
                                                                                        "templates",
                                                                                        "canvas_module",
                                                                                        "resources",
                                                                                        "css.html",
                                                                                        package = "DODschools"))
  
  base
  
}

