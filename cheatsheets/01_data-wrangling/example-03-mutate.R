# ============================================================================
# EXAMPLE 3: Using mutate() to create and modify columns
# ============================================================================
#
# WHAT THIS DOES:
# mutate() creates new columns or modifies existing ones.
# It's how you add calculated fields and transformations to your data.
#
# WHY USE IT:
# When you need to calculate something (e.g., percentage, ratio, log transform)
# or create a new variable based on existing columns.
#
# ============================================================================

# Load the data
library(dplyr)
data(gapminder)

# ============================================================================
# BASIC USAGE: Create a new column
# ============================================================================

# Create a new column with a constant value
gapminder %>%
  mutate(decade = 2000)

# Create a new column based on existing columns
# Calculate GDP (population × GDP per capita)
gapminder %>%
  mutate(gdp = pop * gdpPercap)

# Create multiple new columns at once
gapminder %>%
  mutate(
    gdp = pop * gdpPercap,
    decade = year - (year %% 10)
  )

# ============================================================================
# COMMON CALCULATIONS
# ============================================================================

# Arithmetic operations
gapminder %>%
  mutate(
    lifeExp_months = lifeExp * 12,           # Multiply
    gdpPercap_thousands = gdpPercap / 1000   # Divide
  )

# Mathematical functions
gapminder %>%
  mutate(
    log_gdp = log(gdpPercap),                # Natural logarithm
    sqrt_pop = sqrt(pop)                     # Square root
  )

# ============================================================================
# CONDITIONAL COLUMNS: if_else()
# ============================================================================

# Create a column based on a condition
gapminder %>%
  mutate(lifeExp_category = if_else(lifeExp > 70, "Long", "Short"))

# Multiple conditions with nested if_else
gapminder %>%
  mutate(
    income_level = if_else(
      gdpPercap > 10000, "High",
      if_else(gdpPercap > 5000, "Middle", "Low")
    )
  )

# ============================================================================
# MODIFY EXISTING COLUMNS
# ============================================================================

# Change the data type of a column
gapminder %>%
  mutate(year = as.character(year))

# Round a column to fewer decimal places
gapminder %>%
  mutate(lifeExp = round(lifeExp, digits = 0))

# Convert to percentage
gapminder %>%
  mutate(lifeExp_percent = round((lifeExp / 100) * 100, 2))

# ============================================================================
# RANK AND OFFSET: Ordering within groups
# ============================================================================

# Rank countries by life expectancy
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExp_rank = rank(desc(lifeExp)))

# ============================================================================
# COMBINE WITH OTHER FUNCTIONS
# ============================================================================

# Create a new column AND filter rows
gapminder %>%
  mutate(gdp = pop * gdpPercap) %>%
  filter(gdp > 1000000000)  # GDP > $1 billion

# Select specific columns after mutation
gapminder %>%
  mutate(gdp = pop * gdpPercap) %>%
  select(country, year, gdp)

# ============================================================================
# USEFUL FUNCTIONS INSIDE mutate()
# ============================================================================

# String functions
gapminder %>%
  mutate(country_lower = tolower(country))

# Logical functions
gapminder %>%
  mutate(is_wealthy = gdpPercap > 20000)

# Statistical functions (used with group_by)
gapminder %>%
  mutate(mean_lifeExp = mean(lifeExp, na.rm = TRUE))

# ============================================================================
# REAL-WORLD EXAMPLES
# ============================================================================

# Calculate real GDP for each country-year
# (Assuming we want GDP in billions)
gapminder %>%
  mutate(gdp_billions = (pop * gdpPercap) / 1000000000) %>%
  filter(year == 2007) %>%
  select(country, gdp_billions)

# Classify countries by development status
gapminder %>%
  filter(year == 2007) %>%
  mutate(
    development = if_else(
      lifeExp > 75 & gdpPercap > 15000,
      "Developed",
      if_else(lifeExp > 70, "Developing", "Least developed")
    )
  ) %>%
  select(country, development)

# ============================================================================
# COMMON MISTAKES (and how to fix them)
# ============================================================================

# ✗ WRONG: Using $ instead of column name
# gapminder %>%
#   mutate(gdp = gapminder$pop * gapminder$gdpPercap)  # Works but messy

# ✓ RIGHT: Reference column names directly
gapminder %>%
  mutate(gdp = pop * gdpPercap)

# ✗ WRONG: Trying to use a new column before it's created
# gapminder %>%
#   mutate(
#     ratio = gdp / pop  # Error: 'gdp' doesn't exist yet!
#   )

# ✓ RIGHT: Create columns in the order you need them
gapminder %>%
  mutate(
    gdp = pop * gdpPercap,
    ratio = gdp / pop  # Now 'gdp' exists
  )

# ============================================================================
# YOUR TURN:
# ============================================================================
#
# Try these challenges:
#
# 1. Create a new column: life expectancy in months (lifeExp * 12)
# 2. Create GDP column (pop * gdpPercap)
# 3. Create a column that categorizes life expectancy as "high" (>75) or "low" (≤75)
# 4. Modify an existing column: convert life expectancy to an integer (round it)
# 5. Create multiple columns: GDP and GDP per capita in millions
#
# Hints:
# - Use mutate(new_column_name = calculation)
# - Use if_else(condition, value_if_true, value_if_false)
# - Use round(), as.integer(), as.character() for data conversion
# - You can create multiple columns in one mutate() call
#
# ============================================================================

# Example solution for #1:
gapminder %>%
  mutate(lifeExp_months = lifeExp * 12)

# Try writing solutions for #2, #3, #4, and #5 below:

