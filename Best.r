best <- function(state, outcome) {
  ## Read outcome data
  outcome_data <- read.csv("outcome-of-care-measures.csv") #Read the Outcome data
  hospital_data <- read.csv("hospital-data.csv") #Read Hospital Data
  aux_vect<-c(11,17,23)
  names(aux_vect)<-c("heart attack","heart failure","pneumonia")
  
  if ((state %in% unique(outcome_data[,7])) && outcome %in% names(aux_vect) ) {
    new_data<-outcome_data[outcome_data["State"]==state,]
    print(new_data[which.min(as.numeric(new_data[[aux_vect[outcome]]])),2])
  }
  else if (outcome %in% names(aux_vect)) {
    stop("invalid State")
  }
  else
    stop("invalid outcome")
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
}
