## 17) Dates
x <- data.frame(
  dob=as.Date(c("1983-06-22","1972-10-04"),
  format="%Y-%m-%d", origin="1970-01-01")
     )
x[["dx"]] <- x[["dob"]] + 365.25*c(50, 25)
x[["age_dx"]] <- as.numeric(
  difftime(x[["dx"]], x[["dob"]], units="days")
                 ) / 365.25
print(x)
