complete <- function(directory,id = 1:332){
  aux_dir<-list.files(directory)
  sample_data<-paste0(getwd(),"/",directory,"/",aux_dir[id]) %>%
    lapply(read.csv) %>%                                            # Store all files in list
    bind_rows
  aux1<-1
  auxID<-vector()
  resp<-vector()
  for (i in id) {
    auxID[aux1] <- i
    resp[aux1] <- sum(complete.cases(filter(sample_data,ID==i)))
    aux1<-aux1+1
  }
  respuesta<-data.frame(auxID,resp)
  colnames(respuesta)<-c("id","nobs")
  return(respuesta)
}

