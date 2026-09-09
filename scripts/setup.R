# ============================================================================
# SETUP.R: Install and load all required packages
# ============================================================================
#
# RUN THIS ONCE before using examples in this repo:
#   source('scripts/setup.R')
#
# It will:
# 1. Check if packages are installed
# 2. Install missing packages
# 3. Load all required libraries
# ============================================================================

# Function to install package if not already installed
install_if_missing <- function(package_name) {
  if (!require(package_name, character.only = TRUE)) {
    cat("Installing", package_name, "...\n")
    install.packages(package_name, dependencies = TRUE)
    library(package_name, character.only = TRUE)
    cat("✓", package_name, "installed and loaded\n")
  } else {
    cat("✓", package_name, "already installed\n")
  }
}

# List of all packages used in examples
required_packages <- c(
  # Core tidyverse
  "dplyr",          # data wrangling
  "ggplot2",        # visualization
  "tidyr",          # reshaping data
  
  # Data
  "gapminder",      # sample dataset
  
  # Statistical modeling
  "broom",          # tidy model outputs (optional but nice)
  
  # Useful helpers
  "rlang"           # used internally by tidyverse
)

# Install missing packages
cat("Checking required packages...\n")
cat("=" %,% strrep("-", 70), "\n")

sapply(required_packages, install_if_missing)

cat("=" %,% strrep("-", 70), "\n")
cat("✓ Setup complete! You're ready to use the examples.\n")
cat("\nNext steps:\n")
cat("1. Open a cheatsheet folder (e.g., 'cheatsheets/01_data-wrangling/')\n")
cat("2. Open an example file (e.g., 'example-01-select.R')\n")
cat("3. Run code line-by-line and learn!\n")
cat("\nQuestions? See README.md for help.\n")

# ============================================================================
# TROUBLESHOOTING
# ============================================================================
#
# If installation fails:
#
# Problem: "Package not found" error
# Solution: Make sure you have internet connection and R version 4.0+
#           Try: install.packages("package_name")
#
# Problem: Permission denied
# Solution: You may need admin privileges. Try running R as administrator.
#
# Problem: Dependency installation fails
# Solution: Try installing dependencies first:
#           install.packages("package_name", dependencies = TRUE)
#
# Still stuck? See setup.md or open an issue on GitHub.
# ============================================================================
