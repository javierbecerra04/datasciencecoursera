rankhospital <- function(state, outcome, num = "Best") {
  ## Read outcome data
  outcome_data <- read.csv("Final Assignment/outcome-of-care-measures.csv") #Read the Outcome data
  hospital_data <- read.csv("Final Assignment/hospital-data.csv") #Read Hospital Data
  aux_vect<-c(11,17,23)
  names(aux_vect)<-c("heart attack","heart failure","pneumonia")
  rankh=1
    
  if (is.numeric(num)) {
    rankh=num
    if ((state %in% unique(outcome_data[,7])) && outcome %in% names(aux_vect) ) {
      new_data<-outcome_data[outcome_data["State"]==state,]
      new_data[,aux_vect[outcome]]<-as.numeric(new_data[[aux_vect[outcome]]])
      new_data2<-new_data[order(new_data[aux_vect[outcome]], new_data[2]),]
      print(new_data2[rankh,2]) #Print the num in the raning
    }
  }
  else if (num=="Worst" || num=="worst"){
    if ((state %in% unique(outcome_data[,7])) && outcome %in% names(aux_vect) ) {
      new_data<-outcome_data[outcome_data["State"]==state,]
      new_data[,aux_vect[outcome]]<-as.numeric(new_data[[aux_vect[outcome]]])
      new_data2<-new_data[order(-new_data[aux_vect[outcome]], new_data[2]),]
      print(new_data2[rankh,2]) #Print the num in the raning
    }
  }
  else {
    if ((state %in% unique(outcome_data[,7])) && outcome %in% names(aux_vect) ) {
      new_data<-outcome_data[outcome_data["State"]==state,]
      new_data[,aux_vect[outcome]]<-as.numeric(new_data[[aux_vect[outcome]]])
      new_data2<-new_data[order(new_data[aux_vect[outcome]], new_data[2]),]
      print(new_data2[rankh,2]) #Print the num in the raning
    }
  }
}