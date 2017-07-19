#' Air Force Public Affairs Review Form 
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param fig_caption Should figure captions be enabled?
#' @param toc Should a table of contents be created?
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
public_affairs <- function(...,
                           keep_tex = FALSE,
                           md_extensions = c("-autolink_bare_uris"),
                           fig_caption = FALSE,
                           toc = FALSE,
                           template = "PAform.tex") {
  
   pa_form <- system.file("rmd", "tex", template, package = "DODschools")
  
   rmarkdown::pdf_document(...,
                           template = pa_form,
                           fig_caption = fig_caption,
                           keep_tex = keep_tex,
                           toc = toc,
                           pandoc_args = c('--listings'))
}

#' Air Force Document Distribution Statement Form 
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
distro_form <- function(...,
                        keep_tex = FALSE,
                        md_extensions = c("-autolink_bare_uris"),
                        template = "distroForm.tex") {
  
  
  distro <- system.file("rmd", "tex", template, package = "DODschools")
  
rmarkdown::pdf_document(...,
                        template = distro,
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Air Force Form SF 298 
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
sf298 <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "sf298.tex") {

  sf298_form <- system.file("rmd", "tex", template, package = "DODschools")
  
rmarkdown::pdf_document(...,
                        template = sf298_form,
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Air Force Thesis Electronic Signature Form 
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
signature_form <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "signatureForm.tex") {

  sig_form <- system.file("rmd", "tex", template, package = "DODschools")
  
rmarkdown::pdf_document(...,
                        template = sig_form,
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Air Force Training Report 
#'
#' @param ... Arguments to \code{rmarkdown::pdf_document}
#' @param keep_tex Should the raw TeX files be kept?
#' @param md_extensions Extensions passed to the Markdown engine
#' @param template The TeX template used
#'
#' @return R Markdown output format to pass to \code{\link[rmarkdown:render]{render}}
#'
#' @importFrom rmarkdown pdf_document
training_report <- function(...,
                  keep_tex = FALSE,
                  md_extensions = c("-autolink_bare_uris"),
                  template = "trainingReport.tex") {
  
  tr_form <- system.file("rmd", "tex", template, package = "DODschools")
  
rmarkdown::pdf_document(...,
                        template = tr_form,
                        keep_tex = keep_tex,
                        pandoc_args = c('--listings'))
}


#' Build one or more administrative forms
#'   
#' @param yml \code{character} Path to the metadata.yml file
#' @param which A \code{numeric} designator for the form to be built. If \code{NULL} all forms are built. (see details) 
#'
#' @details The \code{which} argument accepts integer values from one (1) to five (5) 
#' @importFrom rmarkdown render
#' 
#' @export
buildForms <- function(yml = 'metadata.yml', which = NULL,...) {

  meta <- lapply(  X = readLines(yml), 
                 FUN = function(x) gsub('\"', "'", x))
  
  writeLines(text = unlist(meta), 
             con  = system.file('rmd','forms','metadata.yml', package = 'DODschools'))
  
  outdir  <- file.path(dirname(yml),'forms')
  
  forms <- list(
  sf298  <- system.file('rmd','forms','sf298.Rmd',            package = 'DODschools'),
  distro <- system.file('rmd','forms','distributionForm.Rmd', package = 'DODschools'),
  public <- system.file('rmd','forms','PAform.Rmd',           package = 'DODschools'),
  signit <- system.file('rmd','forms','signatureForm.Rmd',    package = 'DODschools'),
  report <- system.file('rmd','forms','trainingReport.Rmd',   package = 'DODschools'))
  
  
  if(!is.null(which)) {
    
    if(!is.numeric(which) | which > 5 | which < 1) stop('Argument must be an integer between 1 & 5')
    
    rmarkdown::render(input = forms[[as.integer(which)]], output_dir = outdir)
    
  } else {
      
    lapply(  X = forms, 
           FUN = function(x) rmarkdown::render(x, output_dir = outdir))
  
  }
  
}
