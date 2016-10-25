source("week1-course-project.R")

plot1 <- function() {
        d <- loadData()
 
        png(filename="plot1.png")
        with( d, hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red"))
        dev.off()
}
        