# You make comments with hashtags
This is not a comment and will produce an error

# R can be a calculator
3 + 1

2 * 10

# R doesn't care about spaces
2* 10
2 *10
2 * 10

# R reads across lines
18 -
2
18 - 2

# R follows order of operations
18 - 2 * 10
  # Now with paranthesis!
(18 - 2) * 10

# SCIENTIFIC NOTATION
  # A very big number
4500000*279572
  # Another big number
1.25e19
  # We can play with it
(1.25e19)/(10^19)

# R FUNCTIONS
sin(92)
sin(pi)

  # You can ask R about these functions
?log()

log(100)

log(100, base = 10)
log(100, 10)

  # R will tell you if you mess up
log("potato")
  # R will warn if you do something questionable
log(-2)

# COMPARISONS
13 == 15
13 == 13

13 > 15
13 < 15

# OBJECTS
x <- 5
x * 1500
y <- 10 * x
y

# ELEPHANT CHALLENGE
elephant1_kg <- 3492
elephant2_lb <- 7757
elephant2_kg <- elephant2_lb/2.2
elephant1_kg > elephant2_kg
elephant1_kg < elephant2_kg
  # Elephant 2 is heavier

# ----------- PROJECT MANAGEMENT

# Your Working Directory is where all your relative filepaths start
getwd()

# You can set your working directory 
  #setwd("filepath")

