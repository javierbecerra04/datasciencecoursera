#Function that calculates the mean of a given pollutant from a list of detector files
pollutantmean <- function(directory,pollutant,id = 1:332){
  #setwd(directory)
  aux_dir<-list.files(directory)
  sample_data<-paste0(getwd(),"/",directory,"/",aux_dir[id]) %>%
    lapply(read_csv) %>%                                            # Store all files in list
    bind_rows
  datafinal<-sample_data[pollutant]
  resp<-mean(datafinal[!is.na(datafinal)])
  resp
}


  