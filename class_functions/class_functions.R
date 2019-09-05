

# downloads data for the class from github
download_class_data <- function(file_name){
  
  base_path <- "https://raw.githubusercontent.com/emeyers/SDS230_F19/master/class_data/"
  
  full_path <- paste0(base_path, file_name)
  
  download.file(full_path, file_name)
  
}





# A function to download the code for each class
download_class_code <- function(class_number){
  
  base_path <- "https://raw.githubusercontent.com/emeyers/SDS230_F19/master/class_code/"
  
  result = tryCatch({
    
    file_name <- paste0("class_", sprintf("%02d", class_number), ".Rmd")
    full_path <- paste0(base_path, file_name)
    download.file(full_path, file_name)
  
  },  warning = function(w) {
    
    file.remove(file_name)
    file_name <- paste0("class_", sprintf("%02d", class_number), ".R")
    full_path <- paste0(base_path, file_name)
    download.file(full_path, file_name)
    
  }, finally = {
  })
  
}



