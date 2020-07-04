best <- function(state, outcome) {
  ## Read outcome data
  outcome_data <- read.csv("outcome-of-care-measures.csv") #Read the Outcome data
  hospital_data <- read.csv("hospital-data.csv") #Read Hospital Data
  
  
  if ((state %in% unique(outcome_data[,7])) && outcome %in% c("Heart Attack","Heart Failure","Pneumonia") ) {
    aux1<-sub(" ",".",outcome)
    column_name<-paste("Hospital.30.Day.Death..Mortality..Rates.from.",aux1,sep = "")
    new_data<-outcome_data[outcome_data["State"]==state,]
    print(new_data[which.min(new_data[[column_name]]),2])
  }
  ## Check that state and outcome are valid
  ## Return hospital name in that state with lowest 30-day death
  ## rate
}
