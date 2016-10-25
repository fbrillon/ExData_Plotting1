source("week1-course-project.R")

plot2 <- function() {
        d <- loadData()
 
        png(filename="plot2.png")
        with( d, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") )
        dev.off()
}
        