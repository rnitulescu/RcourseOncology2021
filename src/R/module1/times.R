## 18) Times (POSIXct)
x <- data.frame(ts=Sys.time())
x[["date"]] <- format(x[["ts"]], "%Y-%m-%d")
x[["time"]] <- format(x[["ts"]], "%H:%M:%S")
x[["ts1"]] <- as.POSIXct(
  paste(x[["date"]], x[["time"]], sep=" ")
              )
str(x)
