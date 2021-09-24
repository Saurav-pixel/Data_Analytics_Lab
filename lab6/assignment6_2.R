
# for second dataset
wine_df<-read.csv("D:/m_tech/data_analytics_lab/assignment_6/wine.csv")
wine_df
plot(wine_df$Alcohol, wine_df$Malic.acid,xlab = "Alcohol", ylab = "malic acid",
             col = colors ) 

#1.b
#install.packages('amap')
#library(amap)
set.seed(240) # Setting seed
WN<-na.omit(wine_df)#omitting NA rows
WN
#1.a.i
Wine_1<- Kmeans(WN, centers = 3,iter.max = 30, nstart = 20, method="manhattan")
Wine_1
Wine_1$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = Wine_1$cluster, 
     main = "K-means with 30 iterations")


Wine_2<- Kmeans(WN, centers = 3,iter.max = 40, nstart = 20, method="manhattan")
Wine_2
Wine_2$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = Wine_2$cluster, 
     main = "K-means with 40 iterations")


Wine_3<- Kmeans(WN, centers = 3,iter.max = 50, nstart = 20, method="manhattan")
Wine_3
Wine_3$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = KM_3$cluster, 
     main = "K-means with 50 iterations")


#1.a.ii
Wine_1$centers
Wine_1$centers[, c("Alcohol", "Malic.acid")]
points(Wine_1$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 

Wine_2$centers
Wine_2$centers[, c("Alcohol", "Malic.acid")]
points(Wine_2$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 


Wine_3$centers
Wine_3$centers[, c("Alcohol", "Malic.acid")]
points(Wine_3$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 

#1.b.iii
Wine_3<- Kmeans(wine_df, centers = 3,iter.max = 30, nstart = 20, method="euclidean")
Wine_3
Wine_3$cluster
plot(wine_df[c("Alcohol", "Malic.acid")], 
     col = Wine_3$cluster, 
     main = "K-means with 3 clusters")


Wine_4<- Kmeans(wine_df, centers = 4,iter.max = 30, nstart = 20, method="euclidean")
Wine_4
Wine_4$cluster
plot(wine_df[c("Alcohol", "Malic.acid")], 
     col = Wine_4$cluster, 
     main = "K-means with 4 clusters")


Wine_5<- Kmeans(wine_df, centers = 5,iter.max = 30, nstart = 20, method="euclidean")
Wine_5
Wine_5$cluster
plot(wine_df[c("Alcohol", "Malic.acid")], 
     col = Wine_5$cluster, 
     main = "K-means with 5 clusters")
