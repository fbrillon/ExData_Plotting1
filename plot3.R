source("week1-course-project.R")

plot3 <- function() {
        d <- loadData()
 
        png(filename="plot3.png")
        with( d, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering" ) )
        with( d, points( datetime, Sub_metering_2, col="red", type="l" ) )
        with( d, points( datetime, Sub_metering_3, col="blue", type="l" ) )
        legend( "topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                lty=c(1,1,1), col=c("black","red","blue"), text.width = 45000 )
        dev.off()
}
        