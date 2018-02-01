#' Open AFIT-Specific forms in a browser  
#'
#' @importFrom utils browseURL
#'
#' @description This function from to complete an AFIT Thesis, the
#' 
#' @param school Character string indicating which school's Style Guide is desired
#' 
#' @export
style_guide <- function(school = 'afit') {

  if(tolower(school)=='afit') {
    
   utils::browseURL(system.file('rmd', 
                                'afit_style_guide_2015.pdf',
                                package = 'DODschools'))
  }
}


#' Open AFIT-Specific forms in a browser  
#'
#' @importFrom utils browseURL
#'
#' 
#' @description This function from to complete an AFIT Thesis, the
#' @export


publicRelease <- function( ) {

   utils::browseURL('http://dtic.mil/dtic/pdf/distribution_statements_and_reasons.pdf')

}
