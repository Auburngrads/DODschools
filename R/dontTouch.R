#' Extract YAML data from metadata.yml
#'
#' @param file Path to the YAML file
#'
#' @importFrom yaml yaml.load_file
#' 

dontTouch <- function(file = NULL) {
  
  yaml <- yaml::yaml.load_file(file)
  
  yaml$affil1 <- paste(c(yaml$affiliation1$university_name,
                         yaml$affiliation1$faculty_group, 
                         yaml$affiliation1$department, 
                         yaml$affiliation1$street_address,
                         yaml$affiliation1$state, 
                         yaml$affiliation1$city,
                         yaml$affiliation1$country,
                         yaml$affiliation1$postal_code),
                       collapse = ', ')
  
  yaml$affil2 <- paste(c(yaml$affiliation2$university_name,
                         yaml$affiliation2$faculty_group, 
                         yaml$affiliation2$department, 
                         yaml$affiliation2$street_address,
                         yaml$affiliation2$state, 
                         yaml$affiliation2$city,
                         yaml$affiliation2$country,
                         yaml$affiliation2$postal_code),
                       collapse = ', ')
  
  yaml$affil3 <- paste(c(yaml$affiliation3$university_name,
                         yaml$affiliation3$faculty_group, 
                         yaml$affiliation3$department, 
                         yaml$affiliation3$street_address,
                         yaml$affiliation3$state, 
                         yaml$affiliation3$city,
                         yaml$affiliation3$country,
                         yaml$affiliation3$postal_code),
                       collapse = ', ')
  
  yaml$affil4 <- paste(c(yaml$affiliation4$university_name,
                         yaml$affiliation4$faculty_group, 
                         yaml$affiliation4$department, 
                         yaml$affiliation4$street_address,
                         yaml$affiliation4$state, 
                         yaml$affiliation4$city,
                         yaml$affiliation4$country,
                         yaml$affiliation4$postal_code),
                       collapse = ', ')
  
  return(yaml)
}