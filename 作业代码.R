library(timeSeries)
library(data.table)
##练习1
data1 = read.csv("E:/新建文件夹 (4)/练习1.csv")
####判断平稳性
co2=ts(data1$co2,start = 1975/1/1,frequency = 72 )
plot(co2)
number1=ts(data1$co2,start = 1975/1/1)
acf(data1$co2,lag.max = 72)
acf(data1$co2)$acf
##练习2
data2 = read.csv("E:/新建文件夹 (4)/练习2.csv")
####判断平稳性
rainfall=ts(data2$rainfall,start = 1945/1/1,frequency = 72 )
plot(rainfall)
number2=ts(data2$rainfall,start = 1945/1/1)
acf(data2$rainfall,lag.max = 72)
acf(data2$rainfall)$acf
####判断纯随机性，6阶，12阶
Box.test(data2$rainfall,lag=6,type = "Ljung-Box")
Box.test(data2$rainfall,lag=12,type = "Ljung-Box")
##练习3
data3 = read.csv("E:/新建文件夹 (4)/练习3.csv")
###判断平稳性
sale=ts(data2$rainfall,start = 2000/1/1,frequency = 48 )
plot(sale)
number3=ts(data3$sale,start = 2000/1/1)
acf(data3$sale,lag.max = 48)
acf(data3$sale)$acf
Box.test(data3$sale,lag=6,type = "Ljung-Box")
Box.test(data3$sale,lag=12,type = "Ljung-Box")
##练习4
data4 = read.csv("E:/新建文件夹 (4)/练习4.csv")
###判断平稳性
case=ts(data4$case,start = 1969/1/1,frequency = 70 )
plot(case)
number4=ts(data4$case,start = 1969/1/1)
acf(data4$case,lag.max = 70)
Box.test(data4$case,lag=6,type = "Ljung-Box")
Box.test(data4$case,lag=12,type = "Ljung-Box")
diff(data4$case)
