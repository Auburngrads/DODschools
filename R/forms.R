#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
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
#' @importFrom rmarkdown pandoc_path_arg
#' @importFrom rmarkdown includes
#' @importFrom rmarkdown includes_to_pandoc_args
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
public_affairs <- function(...,
                           keep_tex = FALSE,
                           md_extensions = c("-autolink_bare_uris"),
                           fig_caption = FALSE,
                           toc = FALSE,
                           template = "PAform.tex",
                           format = "afit_prospectus") {
  
   #eforms <- rmarkdown::pandoc_path_arg(system.file('rmd','tex','eforms.sty', package = 'AFIT'))
   #eforms <- rmarkdown::includes(in_header = eforms)
   #eforms <- rmarkdown::pandoc_include_args(in_header = eforms)
   rmarkdown::pdf_document(...,
                           template = system.file("rmd", 
                                                  "tex", 
                                                  template,
                                                  package = "AFIT"),
                           fig_caption = fig_caption,
                           keep_tex = keep_tex,
                           toc = toc,
                           pandoc_args = c('--listings'))
}

#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown pandoc_path_arg
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
distro_form <- function(...,
                        keep_tex = FALSE,
                        md_extensions = c("-autolink_bare_uris"),
                        template = "distroForm.tex") {
  
#eforms <- rmarkdown::pandoc_path_arg(system.file('rmd','tex','eforms.sty', package = 'AFIT'))
  
rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
                        #includes = rmarkdown::includes(in_header = eforms))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown pandoc_path_arg
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
sf298 <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "sf298.tex") {

#eforms <- rmarkdown::pandoc_path_arg(system.file('rmd','tex','eforms.sty', package = 'AFIT'))

rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
                        #includes = rmarkdown::includes(in_header = eforms))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown pandoc_path_arg
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
signature_form <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "signatureForm.tex") {

#eforms <- rmarkdown::pandoc_path_arg(system.file('rmd','tex','eforms.sty', package = 'AFIT'))

rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
                        #includes = rmarkdown::includes(in_header = eforms))
}


#' Air Force Institute of Technology Prospectus Template 
#'
#' Format for creating the initial pages of AFIT theses, dissertations, and reports.
#' 
#' Adapted from the STYLE GUIDE FOR AFIT DISSERTATIONS, THESES AND GRADUATE RESEARCH PAPERS - July 2015
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
#' @importFrom rmarkdown pandoc_highlight_args
#' @importFrom rmarkdown pandoc_path_arg
#' @examples
#'
#' \dontrun{
#' rmarkdown::draft("MyThesis.Rmd", template = "afit_prospectus", package = "AFIT")
#' }
#'
#' @export
training_report <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "trainingReport.tex") {
  
#eforms <- rmarkdown::pandoc_path_arg(system.file('rmd','tex','eforms.sty', package = 'AFIT'))
  
rmarkdown::pdf_document(...,
                        template = system.file("rmd", 
                                               "tex", 
                                               template,
                                               package = "AFIT"),
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
                        #includes = includes(in_header = eforms))
}


buildForms <- function(yml = 'metadata.yml',which = NULL,...) {

  meta <- readLines(yml)
  meta <- unlist(lapply(meta, FUN = function(x) {gsub('\"', "'", x)}))
  writeLines(meta, con = system.file('rmd','forms','metadata.yml', package = 'AFIT'))
  
  outdir  <- paste(c(dirname(yml),'forms'), collapse = '/')
  
  forms <- list(
  sf298  <- system.file('rmd','forms','sf298.Rmd', package = 'AFIT'),
  distro <- system.file('rmd','forms','distributionForm.Rmd', package = 'AFIT'),
  public <- system.file('rmd','forms','PAform.Rmd', package = 'AFIT'),
  signit <- system.file('rmd','forms','signatureForm.Rmd', package = 'AFIT'),
  report <- system.file('rmd','forms','trainingReport.Rmd', package = 'AFIT'))
  
  if(!is.null(which)) {
    
    rmarkdown::render(input = forms[[which]], output_dir = outdir)
    
  } else {
      
    lapply(forms, FUN = function(x) {rmarkdown::render(x, output_dir = outdir)})
  
  }
  
}