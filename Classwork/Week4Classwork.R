sex <- as.factor(c("male", "female", "male", "male"))
sex
class(sex)
typeof(sex)

# Reordering factor
sex <- factor(sex, levels = c("male", "female"))
sex

# Converting factors to characters
as.character(sex)

year_factor <- as.factor(c(1990, 1983, 1977, 1998, 1990))

as.numeric(year_factor) # doesn't work

year_factor <- as.numeric(as.character(year_factor))

# Renaming factors and levels within factors
levels(sex)

levels(sex)[1] <- "MALE"
levels(sex)

# ------CHALLENGE
  # Renaming Levels
levels(sex) <- c("M", "F")
levels(sex)
  #Reordering Levels
sex <- factor(sex, levels = c("F", "M"))
levels(sex)

# -------------------------------------
# -------STARTING WITH DATA-------------
surveys <- read.csv("Data/portal_data_joined.csv")








