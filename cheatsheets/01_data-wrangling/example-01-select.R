# ============================================================================
# EXAMPLE 1: Using select() to choose columns
# ============================================================================
#
# WHAT THIS DOES:
# select() keeps only the columns you specify.
# It's one of the most common dplyr functions.
#
# WHY USE IT:
# When you have a large dataset with many columns but only need a few,
# select() makes it easier to work with and understand your data.
#
# ============================================================================

# Load the data
library(dplyr)
data(gapminder)

# ============================================================================
# BASIC USAGE: Select specific columns by name
# ============================================================================

# Select one column
# Result: A dataset with just country and lifeExp columns
gapminder %>%
  select(country, lifeExp)

# Select three columns
gapminder %>%
  select(country, year, lifeExp)

# ============================================================================
# SELECT A RANGE: Use colon to select consecutive columns
# ============================================================================

# Select columns from 'country' to 'year' (includes everything in between)
gapminder %>%
  select(country:year)

# Check: What columns are in gapminder?
# Run this to see all column names:
names(gapminder)

# ============================================================================
# DROP COLUMNS: Use minus (-) to remove columns
# ============================================================================

# Remove the gdpPercap column
gapminder %>%
  select(-gdpPercap)

# Remove multiple columns
gapminder %>%
  select(-pop, -gdpPercap)

# Drop everything EXCEPT country and lifeExp
gapminder %>%
  select(-(year:pop))

# ============================================================================
# HELPER FUNCTIONS: Select columns by pattern
# ============================================================================

# Select columns starting with a letter
gapminder %>%
  select(starts_with("c"))  # Selects 'country', 'continent'

# Select columns ending with a letter
gapminder %>%
  select(ends_with("p"))   # Selects 'pop', 'gdpPercap'

# Select columns containing a letter
gapminder %>%
  select(contains("exp"))  # Selects 'lifeExp'

# ============================================================================
# REORDER COLUMNS: select() can also reorder columns
# ============================================================================

# Move lifeExp to the front
gapminder %>%
  select(lifeExp, everything())

# Put columns in a specific order
gapminder %>%
  select(country, lifeExp, gdpPercap, year, continent, pop)

# ============================================================================
# COMBINE WITH OTHER FUNCTIONS: Chain select() with other verbs
# ============================================================================

# Select columns AND filter rows
gapminder %>%
  select(country, lifeExp) %>%
  filter(lifeExp > 80)

# ============================================================================
# COMMON MISTAKES (and how to fix them)
# ============================================================================

# ✗ WRONG: Forgetting the pipe
select(gapminder, country, lifeExp)  # This works but is not the tidyverse style

# ✓ RIGHT: Use pipe notation
gapminder %>%
  select(country, lifeExp)

# ✗ WRONG: Using quotes around column names (usually)
gapminder %>%
  select("country", "lifeExp")  # This works but unnecessary

# ✓ RIGHT: Column names without quotes
gapminder %>%
  select(country, lifeExp)

# ✗ WRONG: Selecting a column that doesn't exist
# gapminder %>%
#   select(life_expectancy)  # Error: column doesn't exist

# ✓ RIGHT: Check column names first
gapminder %>%
  names()  # See all available columns

# ============================================================================
# YOUR TURN:
# ============================================================================
#
# Try these challenges:
#
# 1. Select only country and continent from gapminder
# 2. Select all columns EXCEPT continent
# 3. Select columns that end with 'p'
# 4. Select country and lifeExp, and filter for years after 2000
#
# Hints:
# - Use gapminder %>% select(...)
# - Use the minus sign (-) to drop columns
# - Use ends_with() to match patterns
# - Use filter() for row conditions
#
# ============================================================================

# Example solution for #1:
gapminder %>%
  select(country, continent)

# Try writing solutions for #2, #3, and #4 below:

