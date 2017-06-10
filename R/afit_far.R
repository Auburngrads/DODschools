#' Air Force Institute of Technology Thesis Template 
#'
#' Format for creating an annual AFIT Faculty Activity Report
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param fig_caption Should figure captions be enabled?
#' @param toc Should a table of contents be created?
#' @param template The TeX template used
#' @param format The format of the document
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_thesis", package = "AFIT")
#' }
#' 
#' @seealso \code{\link{style_guide(school = 'afit')}}
#' 
#' @export
afit_far <- function(...,
                        keep_tex = TRUE,
                        md_extensions = c("-autolink_bare_uris"),
                        fig_caption = TRUE,
                        toc = TRUE,
                        template = "template.tex",
                        format = "afit_far") {
  
  rmarkdown::pdf_document(...,
                          template = system.file("rmarkdown", "templates", format, 'resources',template,
                          package = "AFIT"),
                          fig_caption = fig_caption,
                          keep_tex = keep_tex,
                          toc = toc,
                          pandoc_args = c('--listings'))
}
