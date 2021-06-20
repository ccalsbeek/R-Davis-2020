# Starting Data
set.seed(15)
hw3 <- runif(50, 4, 50)
hw3 <- replace(hw3, c(4,12,22,27), NA)
hw3

# PROBLEM 1
  # Remove NAs and only keep values 14-38
prob1 <- hw3[!is.na(hw3) & hw3 > 13.99 & hw3 < 38.0]
prob1

# PROBLEM 2
  # Create times3 vector
times3 <- prob1 * 3
times3

  # Create plus10 vector
plus10 <- times3 + 10
plus10

# PROBLEM 3

final <- plus10[c(1,3,5,7,9,11,13,15,17,19,21,23)]
final
