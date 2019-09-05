

# downloads data for the class from github
download_class_data <- function(file_name){
  
  #base_path <- "https://github.com/emeyers/SDS230_F19/blob/master/class_data/"
  base_path <- "https://raw.githubusercontent.com/emeyers/SDS230_F19/master/class_data/"
  
  full_path <- paste0(base_path, file_name)
  
  download.file(full_path, file_name)
  
}





# A function to download the code for each class
download_class_code <- function(class_number){
  
  result = tryCatch({
    download_class_code_with_extension(class_number, is_R_file = FALSE)
  },  warning = function(w) {
    file_name <- paste0("class_", sprintf("%02d", class_number), ".Rmd")
    file.remove(file_name)
    download_class_code_with_extension (class_number, is_R_file = TRUE)
  }, finally = {
  })
  
    
}





# A helper function to help get the code for each class based on the code's extension
download_class_code_with_extension <- function(class_number, is_R_file = FALSE){
  
  base_path <- "https://raw.githubusercontent.com/emeyers/SDS230_F19/master/class_code/"
  
  
  extension <- ".Rmd"
  if (is_R_file)
    extension <- ".R"
  
  file_name <- paste0("class_", sprintf("%02d", class_number), extension)
  
  full_path <- paste0(base_path, file_name)
  
  download.file(full_path, file_name)
  
}

