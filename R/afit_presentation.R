
#' Create an AFIT Presentation
#'
#' Format for converting from R Markdown to a slidy presentation.
#'
#' @inheritParams slidy_presentation
#' @inheritParams html_document
#'
#' @param ... extra stuff
#' @param logo The file path for a image file shown on the title slide (relative to the .Rmd file)
#' @param template The HTML template file
#' @param format The type of template format type
#' @param incremental Should bullets be revealed individually?
#' @param fig_width The default figure width
#' @param fig_height The default figure height
#' @param self_contained How to handle resources
#' @param smart Is this presentation smart
#' @param css The file path for a css file (relative to the .Rmd file)
#' @param js The file path for a js file (relative to the .Rmd file) 
#' @param highlight Code highlighting applied
#' @param pandoc_args Arguments to apply to Pandoc
#' @param duration Duration (in minutes) of the slide deck. This value is used
#'   to add a countdown timer to the slide footer.
#' @param footer Footer text (e.g. organization name and/or copyright)
#' @param includes Additional content to include using \code{rmarkdown::includes}
#' @param mathjax Should mathjax be included
#' @param font_adjustment Increase or decrease the default font size
#'  (e.g. -1 or +1). You can also manually adjust the font size during the
#'  presentation using the 'S' (smaller) and 'B' (bigger) keys.
#'
#' @return R Markdown output format to pass to \code{\link{render}}
#'
#' @details
#'
#' See the \href{http://rmarkdown.rstudio.com/slidy_presentation_format.html}{online
#' documentation} for additional details on using the \code{slidy_presentation} format.
#'
#' For more information on markdown syntax for presentations see the
#' \href{http://pandoc.org/README.html}{pandoc online documentation}.
#'
#' @examples
#' \dontrun{
#'
#' library(AFIT)
#'
#' # simple invocation
#' render("afit_presentation.Rmd", slidy_presentation())
#'
#' # specify an option for incremental rendering
#' render("afit_presentation.Rmd", slidy_presentation(incremental = TRUE))
#' }
#'
#' @export

afit_presentation <- function(...,
                              logo = NULL,
                              template = 'default.html',
                              format = 'afit_presentation',
                              incremental = FALSE, 
                              fig_width = 8, 
                              fig_height = 4.9, 
                              self_contained = F,
                              smart = FALSE,
                              css = NULL,
                              js = NULL,
                              highlight = "default", 
                              pandoc_args = NULL,
                              duration = NULL,
                              footer = NULL,
                              includes = NULL,
                              mathjax = 'default',
                              font_adjustment = 0) {

  Template <- system.file("rmarkdown", "templates", format, 'resources',template,
                          package = "AFIT")
  args <- c()
  
  #
  # Add Custom CSS Files
  #
  
  # this_css <- system.file('rmd','css','afit-slidy.css', package = 'AFIT')
  # 
  # if(!file.exists(paste(c(getwd(),'scripts/afit-slidy.css'), collapse = '/'))) {
  #   
  #     file.create(paste(c(getwd(),'scripts/afit-slidy.css'), collapse = '/'))
  #   
  # } 
  #   
  # that_css <- paste(c(getwd(),'scripts/afit-slidy.css'), collapse = '/')  
  # code_css <- readLines(this_css)
  # writeLines(code_css, con = that_css)
  # that_css <- rmarkdown::relative_to(getwd(), that_css)
  # 
  # css <- c(css,that_css)
  # 
  # for (css_file in css)
  # args <- c(args, "--css", pandoc_path_arg(css_file))
  # 
  # #
  # # Add Custom JS code
  # #
  # 
  # this_js <- system.file('rmd','js','afit-slidy.js', package = 'AFIT')
  # 
  # if(!file.exists(paste(c(getwd(),'scripts/afit-slidy.js'), collapse = '/'))) {
  #   
  #     file.create(paste(c(getwd(),'scripts/afit-slidy.js'), collapse = '/'))
  # }
  # 
  # #
  # # Add Custom R code
  # #
  # 
  # this_R <- system.file('rmd','R','setup.R', package = 'AFIT')
  # 
  # if(!file.exists(paste(c(getwd(),'scripts/setup.R'), collapse = '/'))) {
  #   
  #     file.create(paste(c(getwd(),'scripts/setup.R'), collapse = '/'))
  #   
  # } 
  #   
  # that_R <- paste(c(getwd(),'scripts/setup.R'), collapse = '/')  
  # code_R <- readLines(this_R)
  # writeLines(code_R, con = that_R)
  
  rmarkdown::slidy_presentation(...,
                                template = Template,
                                incremental = incremental,
                                fig_width = fig_width,
                                fig_height = fig_height,
                                smart = smart,
                                self_contained = self_contained,
                                highlight = highlight,
                                includes = includes,
                                pandoc_args = args,
                                duration = duration,
                                footer = footer,
                                mathjax = mathjax,
                                font_adjustment = font_adjustment)
}
