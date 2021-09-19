# Question 2
#  Perform the following:
#  (a) Define a normalized vector P.

#  (b) Define a normalized vector Q.
#  (c) Combine P and Q as matrix object. Please note that when defining a matrix from
#  vectors, the vectors should be combined as rows.
#  (d) Compute the Euclidean Distance with default parameters

p <- 1:10/sum(1:10)
p

q <- 11:20 / sum(11:20)
q

x <- rbind(p,q)
View(x)

# finding the euclidean distance
euclidean_distance <- dist(x, method = 'euclidean')
euclidean_distance
