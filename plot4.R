source("week1-course-project.R")
source("plot2.R")

plot4 <- function() {
        d <- loadData()
 
        png(filename="plot4.png")
        par( mfrow=c(2,2) )
        
        # Top Left
        with( d, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power") )

        # Top Right
        with( d, plot(datetime, Voltage, type="l") )
        
        # Bottom Left
        with( d, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering" ) )
        with( d, points( datetime, Sub_metering_2, col="red", type="l" ) )
        with( d, points( datetime, Sub_metering_3, col="blue", type="l" ) )
        legend( "topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                lty=c(1,1,1), col=c("black","red","blue"), text.width = 90000, bty="n" )        

        # Bottom Right
        with( d, plot(datetime, Global_reactive_power, type="l", xlab="") )
        
        dev.off()
}
        