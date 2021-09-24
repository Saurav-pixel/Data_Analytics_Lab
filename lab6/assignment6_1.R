#1.a
install.packages("ClusterR")
install.packages("cluster")
library(ClusterR)
library(cluster)
airQuality<-read.csv("D:/m_tech/data_analytics_lab/assignment_6/airquality.csv")
airQuality
summary(airQuality)
?airQuality

colors = c("red", "green")
plot(airQuality$Ozone, airQuality$Wind, xlab = "air quality at Ozone", ylab = "airQ quality Wind", col= colors)

#1.b
install.packages('amap')
library(amap)
set.seed(240) # Setting seed
AirQuality<-na.omit(airQuality)#omitting NA rows
AirQuality
#1.a.i
KMean_1 <- Kmeans(AirQuality, centers = 3,iter.max = 30, nstart = 20, method="euclidean")
KMean_1
KMean_1$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KMean_1$cluster, 
     main = "K-means with 30 iterations")


KMean_2<- Kmeans(AirQuality, centers = 3,iter.max = 40, nstart = 20, method="euclidean")
KMean_2
KMean_2$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KMean_2$cluster, 
     main = "K-means with 40 iterations")


KMean_3<- Kmeans(AirQuality, centers = 3,iter.max = 50, nstart = 20, method="euclidean")
KMean_3
KM_E_3$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KMean_3$cluster, 
     main = "K-means with 50 iterations")

#1.a.ii
KMean_1$centers
KMean_1$centers[, c("Solar.R", "Wind")]
points(KMean_1$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KMean_2$centers
KMean_2$centers[, c("Solar.R", "Wind")]
points(KMean_2$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KMean_3$centers
KMean_3$centers[, c("Solar.R", "Wind")]
points(KMean_3$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

#1.b.iii
KM3<- Kmeans(AirQuality, centers = 3,iter.max = 30, nstart = 20, method="euclidean")
KM3
KM3$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KM3$cluster, 
     main = "K-means with 3 clusters")


KM4<- Kmeans(AirQuality, centers = 4,iter.max = 30, nstart = 20, method="euclidean")
KM4
KM4$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KM4$cluster, 
     main = "K-means with 4 clusters")


KM5<- Kmeans(AirQuality, centers = 5,iter.max = 30, nstart = 20, method="euclidean")
KM5
KM5$cluster
plot(AirQuality[c("Solar.R", "Wind")], 
     col = KM5$cluster, 
     main = "K-means with 5 clusters")







