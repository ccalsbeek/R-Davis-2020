# Vectors are objects that contain elements
x <- 5
x

# Vectors can contain more than one element, separated by commas
weight_g <- c(10, 29, 14, 12)
weight_g

# Vectors can contain string elements separated with quotes
animals <- c('elephant', 'rat', 'kangaroo')
animals

# quotes must be closed to create indivual elements
strange_animal <- c("elephant, rat, kangaroo")
strange_animal

# The length function will tell you the length of the vector
length(weight_g)
length(strange_animal)

# The class functions will tell you the type of elements in the vector
class(x)
class(weight_g)
class(animals)

# The structure function will tell you the structure of the vector
str(weight_g)
str(animals)

# You can make a vector longer
weight_g2 <- c(weight_g, 1500)
weight_g
weight_g2

weight_g3 <- c(0.2, weight_g2)
weight_g3

True
typeof(True)
log(True)

# --------CHALLENGE--------
num_char <- c(1, 2, 3, "a")
class(num_char)
num_char

num_logical <- c(1, 2, 3, TRUE)
class(num_logical)
num_logical

char_logical <- c("a", "b", "c", TRUE)
class(char_logical)
char_logical

tricky <- c(1, 2, 3, "4")
class(tricky)
tricky

# -----------------------

# INDEXING
animals

animals[2]

animals[c(1,2)]
animals[c(2,1)]

# Multiple Simultaneous Subsets
animals[c(1,1,1,3)]

# Conditional Subsetting
weight_g
weight_g[1]
weight_g[c(TRUE, FALSE, FALSE, TRUE)]

weight_g > 13

weight_g[weight_g > 13]

# Apply more than one condition
  # AND &
  # OR |

weight_g[weight_g > 13 & weight_g < 20]
weight_g[weight_g > 30 | weight_g < 15]

weight_g[weight_g > 30 | weight_g < 1]

# Character Subsetting
animals
animals[animals == "rat"]
animals[animals == "rat" | animals =="elephant"]

animals[animals %in% c("squirrels", "bumble bees", "kangaroo")]

# R will value strings alphabetically
"four" > "five"
"six" > "five"
"bananas" < "apples"

TRUE > FALSE

# --------MISSING DATA----------
# R can read NA values in numeric vectors
heights <- c(4, 7, 10, 12, NA, 9)
class(heights)
heights

# R doesn't like them, though
mean(heights)
max(heights)

# R considers them "logical" like TRUE/FALSE
typeof(NA)

# Remove NA with na.rm
mean(heights, na.rm = TRUE)

# Look for NA with is.na
is.na(heights)

  # ! means no
!is.na(heights)

# Subsetting to identify non-NA values
heights[!is.na(heights)]
heights[is.na(heights)]

# complete.cases
heights[complete.cases(heights)]

# ---------- CHALLENGE -----------
# Original Vector
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# Create new vector with NAs removed
heights2 <- heights[complete.cases(heights)]
heights2

# Get the median
median(heights2)
  #you can do it from the original vector, too
median(heights, na.rm = TRUE)

# How many people are taller than 67 in?
tallcount <- length(heights2[heights2 >67])
tallcount
  #you can do it from the original vector, too
tallcount2 <- length(heights[complete.cases(heights)][heights[complete.cases(heights)] > 67])
tallcount2
  #you can do it in a neater way, too
length(heights[!is.na(heights) & heights > 67])

# --------FACTORS---------
sex <- c("female", "female", "male")
class(sex)

sex <- factor(sex)
class(sex)
typeof(sex)

# inspect levels
levels(sex)
  # R will order factors alphabetically
# count levels
nlevels(sex)

# You can assign levels
sex_order <- factor(sex, levels = c("male", "female"))
levels(sex_order)

# You can rename levels
levels(sex)[1]
levels(sex)[2]
  # By index number
levels(sex)[1] <- "FEMALE"
levels(sex)
  # Naming multiple levels
levels(sex) <- c("FEMALE", "MALE")
levels(sex)

# --------- CONVERTING DATA TYPES
year <- factor(c("1998", "1990", "1978"))
year

# Coercing factors to numbers doesn't work well
as.numeric(year)

# Multiple coercion arguments
as.numeric(as.character(year))

# read.csv automatically converts characters to factors