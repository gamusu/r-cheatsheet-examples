# ============================================================================
# EXAMPLE 2: Using filter() to select rows
# ============================================================================
#
# WHAT THIS DOES:
# filter() keeps only the rows that meet your conditions.
# It's like saying "show me only the data where X is true"
#
# WHY USE IT:
# When you want to focus on a subset of data (e.g., one country,
# one year, or data meeting certain criteria)
#
# ============================================================================

# Load the data
library(dplyr)
data(gapminder)

# ============================================================================
# BASIC USAGE: Filter with one condition
# ============================================================================

# Keep only rows from 2007
gapminder %>%
  filter(year == 2007)

# Keep only rows for a specific country
gapminder %>%
  filter(country == "Canada")

# Keep only rows where life expectancy is greater than 80
gapminder %>%
  filter(lifeExp > 80)

# Keep only rows where GDP per capita is less than 5000
gapminder %>%
  filter(gdpPercap < 5000)

# ============================================================================
# MULTIPLE CONDITIONS: Use & (AND), | (OR), ! (NOT)
# ============================================================================

# AND: Both conditions must be true
# Keep 2007 data AND countries with life expectancy > 75
gapminder %>%
  filter(year == 2007 & lifeExp > 75)

# OR: At least one condition must be true
# Keep data from 2002 OR 2007
gapminder %>%
  filter(year == 2002 | year == 2007)

# NOT: Exclude rows where condition is true
# Keep all years EXCEPT 2007
gapminder %>%
  filter(!(year == 2007))

# ============================================================================
# MEMBERSHIP: Use %in% to check if value is in a list
# ============================================================================

# Keep only rows for specific countries
gapminder %>%
  filter(country %in% c("Canada", "United States", "Mexico"))

# Keep only rows for specific continents
gapminder %>%
  filter(continent %in% c("Americas", "Europe"))

# Keep data from specific years
gapminder %>%
  filter(year %in% c(1952, 1977, 2007))

# ============================================================================
# COMPARISON OPERATORS
# ============================================================================

# == equals
# != not equals
# >  greater than
# <  less than
# >= greater than or equal
# <= less than or equal

# Examples:
gapminder %>% filter(lifeExp > 70)     # Greater than
gapminder %>% filter(lifeExp <= 50)    # Less than or equal
gapminder %>% filter(year != 1952)     # Not equal to

# ============================================================================
# SPECIAL FUNCTIONS: is.na(), between()
# ============================================================================

# Filter out rows with missing values
gapminder %>%
  filter(!is.na(lifeExp))

# Keep rows where lifeExp is between 60 and 70
gapminder %>%
  filter(between(lifeExp, 60, 70))

# ============================================================================
# COMBINE WITH SELECT: Filter rows AND choose columns
# ============================================================================

# Show only country and lifeExp for data from 2007
gapminder %>%
  filter(year == 2007) %>%
  select(country, lifeExp)

# Multiple conditions and column selection
gapminder %>%
  filter(year == 2007 & continent == "Africa") %>%
  select(country, lifeExp, gdpPercap)

# ============================================================================
# COMMON MISTAKES (and how to fix them)
# ============================================================================

# ✗ WRONG: Using = instead of == for comparison
# gapminder %>% filter(year = 2007)  # Error!

# ✓ RIGHT: Use == for comparison, = for assignment (rarely needed)
gapminder %>%
  filter(year == 2007)

# ✗ WRONG: Using "and" or "or" instead of & or |
# gapminder %>% filter(year == 2007 and lifeExp > 75)  # Error!

# ✓ RIGHT: Use & for AND and | for OR
gapminder %>%
  filter(year == 2007 & lifeExp > 75)

# ✗ WRONG: Forgetting quotes around text values
# gapminder %>% filter(country == Canada)  # Error!

# ✓ RIGHT: Text values need quotes
gapminder %>%
  filter(country == "Canada")

# ============================================================================
# REAL-WORLD EXAMPLES
# ============================================================================

# Question: How many countries had life expectancy > 75 in 2007?
gapminder %>%
  filter(year == 2007 & lifeExp > 75) %>%
  nrow()  # Count rows

# Question: What was the highest life expectancy in Africa in 2007?
gapminder %>%
  filter(continent == "Africa" & year == 2007) %>%
  summarise(max_lifeExp = max(lifeExp))

# Question: Find all data for countries in the Americas between 1980 and 2000
gapminder %>%
  filter(continent == "Americas" & year >= 1980 & year <= 2000)

# ============================================================================
# YOUR TURN:
# ============================================================================
#
# Try these challenges:
#
# 1. Filter for only rows where life expectancy is greater than 80
# 2. Filter for data from the year 2007 and continent Europe
# 3. Filter for countries with population greater than 100 million in 2007
# 4. Filter for years 1952, 1977, and 2002 (use %in%)
# 5. Filter for countries in Asia with GDP per capita less than 10000 in 2007
#
# Hints:
# - Use gapminder %>% filter(...)
# - Combine conditions with & (AND) or | (OR)
# - Use %in% for checking if values are in a list
# - Remember: column names without quotes, text values WITH quotes
#
# ============================================================================

# Example solution for #1:
gapminder %>%
  filter(lifeExp > 80)

# Try writing solutions for #2, #3, #4, and #5 below:

