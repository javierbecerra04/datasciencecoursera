Above10 <- function(x,y=10) {
        x[x>y]
}

colummean <- function(datos) {
        res<-vector(length = ncol(datos))
        for(i in 1:(ncol(datos))) {
          res[i]<-mean(datos[,i],na.rm = TRUE)
        }
        return(res)
}