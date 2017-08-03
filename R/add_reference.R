#' Add a BibEntry Reference to an Existing Collection
#' 
#' @description Merge one or more BibEntries together without 
#'              duplicating entries
#' 
#' @details  stuff
#' 
#' @importFrom RefManageR as.BibEntry ReadBib WriteBib
#' @importFrom tools file_ext
#' 
#' @param bib One more \code{BibEntry}-class objects as defined by \code{RefManageR::is.BibEntry()} 
#' @param file The name of path (as a \code{character} string) of a .bib file containing \code{BibEntry}-class objects 
#'
#' @examples 
#' \dontrun{
#' require(RefManageR)
#' 
#' # Create First BibEntry
#' ref <- as.BibEntry(citation(package = 'RefManageR'))
#' 
#' # Write BibEntry to file new_bib.bib
#' WriteBib(bib = ref, file = 'new_bib.bib')
#' 
#' # Create Second BibEntry
#' surv <- as.BibEntry(citation(package = 'survival'))
#' 
#' # Add second BibEntry to File
#' add_reference(bib = surv, file = 'new_bib.bib')
#' }
#' @export
add_reference <- function(bib, file) {
  
  if(tools::file_ext(file) != 'bib') stop('file is not a .bib file')
  
  Bib <- as.BibEntry(bib)
  
  bib_file = ReadBib(file = file)
  
  BIB <- bib_file + bib

  WriteBib(bib = BIB, file = file, append = F)  
}
