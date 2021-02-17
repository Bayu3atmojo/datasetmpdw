#input data
latihan<-read.csv("https://raw.githubusercontent.com/4riz/STA542/main/dataLatihan_P1.csv", sep = ";", header = TRUE)
knitr::kable(latihan)

#eksplorasi data
head(latihan)

#panjang data
tail(latihan)

#cleaning data
datatrend<-na.omit(latihan$trend)
datatrend

datamusiman<-na.omit(latihan$musiman)
datamusiman

datagabungan<-na.omit(latihan$Gabungan)
datagabungan

#membentuk data timeseries
datakonstan.ts <- ts(latihan$konstan)
datakonstan.ts

datatrend.ts <- ts(datatrend)
datatrend.ts

datamusiman.ts <- ts(datamusiman)
datamusiman.ts

datagabungan.ts <- ts(datagabungan)
datagabungan.ts

#Plot data
ts.plot(datakonstan.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola konstan", ylim=c(80,120))
points(datakonstan.ts)

ts.plot(datakonstan.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola konstan")
points(datakonstan.ts)

ts.plot(datatrend.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola trend")
points(datatrend.ts)

ts.plot(datamusiman.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola musiman")
points(datamusiman.ts)

ts.plot(datagabungan.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola gabungan")
points(datagabungan.ts)

#menyimpan plot

setwd("C:\\Users\\IMAM\\Desktop\\Tutor\\MPDW\\UTS\\Meet1")
      
png(file="plot konstan.png", width=600, height=400)
ts.plot(datakonstan.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola konstan")
points(datakonstan.ts)
dev.off()

jpeg(file="plot trend.jpeg", width=600, height=400)
ts.plot(datatrend.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola trend")
points(datatrend.ts)
dev.off()

jpeg(file="plot musiman.jpeg", width=600, height=400)
ts.plot(datamusiman.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola musiman")
points(datamusiman.ts)
dev.off()

jpeg(file="plot gabungan.jpeg", width=600, height=400)
ts.plot(datagabungan.ts, xlab="periode waktu", ylab="data", main="Plot time series data berpola gabungan")
points(datagabungan.ts)
dev.off()

