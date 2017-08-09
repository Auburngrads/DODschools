#' Air Force Institute of Technology Thesis Template 
#'
#' @description Create an AFIT thesis using rmarkdown
#' 
#' @source STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param fig_caption Should figure captions be enabled?
#' @param toc Should a table of contents be created?
#' @param template The TeX template used
#' @param format The format of the document
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown::render]{render}}
#'
#' @importFrom bookdown pdf_document2
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown includes
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_thesis", package = "DODschools")
#' }
#'
#' @seealso \code{\link{style_guide(school = 'afit')}}
#' 
#' @export
afit_thesis <- function(...,
                        keep_tex = !FALSE,
                        md_extensions = c("-autolink_bare_uris"),
                        fig_caption = TRUE,
                        toc = TRUE,
                        template = "templateb.tex",
                        format = "afit_thesis") {
  
  thesis <- system.file("rmarkdown",
                        'templates',
                        format,
                        'resources',
                        template,
                        package = "DODschools")
  
  bookdown::pdf_document2(...,
                          template = thesis,
                          fig_caption = fig_caption,
                          keep_tex = keep_tex,
                          toc = toc,
                          pandoc_args = c('--listings'),
                          citation_package = 'natbib',
                          highlight = 'kate')
                          #includes = rmarkdown::includes(in_header = list(thesis)))
  
#  pre_processor <- function(metadata, input_file, runtime, knit_meta, files_dir,
#                             output_dir) {
#     #args <- c(input_file = base)
#     args <- c(args, output_dir = 'final-products')
#     args <- c(args, rmarkdown::pandoc_variable_arg("kable-scroll", "1"))
#     args
# }
# 
#  knit_hooks <- {}
#  knit_hooks$jkf <- knitr::knit_hooks$set(
#   
#   jkf_par = function(before, options, envir) {
#   
#   if (before) {
#     
#     par(cex.lab = 1.05, 
#         cex.axis = 1.05, 
#         mgp = c(3.25,0.7, 0), 
#         tcl = -0.3, 
#         font.lab = 2, 
#         font = 2, 
#         font.axis = 2, 
#         tck = 0.015, 
#         family = "serif",
#         lwd = 2)  }
# })
# 
#  opts_chunk <- list(message = FALSE, 
#                       warning = FALSE, 
#                       echo = FALSE, 
#                       results = "asis", 
#                       jkf_par = TRUE,
#                       fig.align = 'center',
#                       fig.pos = 'h',
#                       fig.width = 6.25,
#                       fig.height = 4.5,
#                       comment = NA)
#  
#  rmarkdown::output_format(
#     knitr = rmarkdown::knitr_options(opts_chunk = opts_chunk,
#                                      knit_hooks = knit_hooks),
#     pandoc = NULL,
#     df_print = "kable",
#     pre_processor = pre_processor,
#     base_format =  base)
}

