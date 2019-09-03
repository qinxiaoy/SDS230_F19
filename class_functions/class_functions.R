

# downloads data for the class from github
download_class_data <- function(file_name){
  
  base_path <- "https://github.com/emeyers/SDS230_F19/blob/master/class_data/"
  full_path <- paste0(base_path, file_name)
  
  download.file(full_path, file_name)
  
}




