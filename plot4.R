png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(febpower$Global_active_power ~ febpower$DateTime, type="l")
plot(febpower$Voltage ~ febpower$DateTime, type="l")

with(febpower, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(febpower$Sub_metering_2 ~ febpower$DateTime, col = 'Red')
lines(febpower$Sub_metering_3 ~ febpower$DateTime, col = 'Blue')

plot(febpower$Global_reactive_power ~ febpower$DateTime, type="l")

dev.off()