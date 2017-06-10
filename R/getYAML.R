#' Extract YAML metadata from an Rmarkdown file
#'
#' @param file A file containing a YAML metadata header
#'
#' @export

getYAML <- function(file) {
  
  lines  <- readLines(file)[1:100]
  header <- list(lines[min(which(lines%in%'---')):max(which(lines%in%'---'))])
  header <- unlist(header)
  header <- gsub(': ', ':', header)
  header <- gsub('    ', '',header)
  header <- gsub('  ', '',  header)
  header <- gsub('>', '',   header)
  header <- gsub('#', ' #', header)
  header <- gsub("'", '',   header)
  
  output <- header[pmatch('output:',header)+1]
  output <- gsub(" ", "", unlist(strsplit(output, ':'))[1])
  
  title  <- header[pmatch('title:', header)]
  title  <- gsub('\"', "", unlist(strsplit(title, ':'))[2])
  
  department  <- header[pmatch('department:', header)]
  department  <- gsub('\"', "", unlist(strsplit(department, ':'))[2])
  
  designator  <- header[pmatch('designator:', header)]
  designator  <- gsub('\"', "", unlist(strsplit(designator, ':'))[2])
  
  author.name <- header[pmatch('author:', header) + 1]
  author.name <- gsub('\"', "", unlist(strsplit(author.name, ':'))[2])
  
  author.rank <- header[pmatch('author:', header) + 3]
  author.rank <- gsub('\"', "", unlist(strsplit(author.rank, ':'))[2])
  
  author.dept <- header[pmatch('author:', header) + 2]
  author.dept <- gsub('\"', "", unlist(strsplit(author.dept, ':'))[2])
  
  author.svc <- header[pmatch('author:', header) + 4]
  author.svc <- gsub('\"', "", unlist(strsplit(author.svc, ':'))[2])
  
  yaml <- list()
  
  yaml$output <- output
  yaml$title <- title
  yaml$department <- department
  yaml$designator <- designator
  yaml$author.name <- author.name
  yaml$author.department <- author.dept
  yaml$author.rank <- author.rank
  yaml$designator <- designator

  return(yaml)  
}
