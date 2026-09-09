# ============================================================================
# LOAD-DATA.R: Load example datasets
# ============================================================================
#
# This script loads common datasets used throughout the examples.
# Most example files will load these automatically, but you can also
# run this directly to explore datasets:
#
#   source('scripts/load-data.R')
#
# ============================================================================

library(dplyr)

# Load gapminder dataset (already available from the gapminder package)
data(gapminder)

# Load other datasets from CSV files
data_dir <- 'data/raw'

# Check if data directory exists
if (!dir.exists(data_dir)) {
  cat("Warning: data/raw/ directory not found.\n")
  cat("Make sure you're running this from the repo root directory.\n")
} else {
  cat("Loading datasets from", data_dir, "...\n")
  
  # Load world bank data (if it exists)
  if (file.exists(file.path(data_dir, 'world_bank.csv'))) {
    world_bank <- read.csv(file.path(data_dir, 'world_bank.csv'),
                           stringsAsFactors = FALSE)
    assign('world_bank', world_bank, envir = globalenv())
    cat("✓ world_bank loaded\n")
  }
  
  # Load survey data (if it exists)
  if (file.exists(file.path(data_dir, 'surveys.csv'))) {
    surveys <- read.csv(file.path(data_dir, 'surveys.csv'),
                        stringsAsFactors = FALSE)
    assign('surveys', surveys, envir = globalenv())
    cat("✓ surveys loaded\n")
  }
  
  # Load income data (if it exists)
  if (file.exists(file.path(data_dir, 'income_data.csv'))) {
    income_data <- read.csv(file.path(data_dir, 'income_data.csv'),
                            stringsAsFactors = FALSE)
    assign('income_data', income_data, envir = globalenv())
    cat("✓ income_data loaded\n")
  }
}

# Show what's available
cat("\n" %,% strrep("=", 70), "\n")
cat("Available datasets:\n")
cat("  - gapminder (from gapminder package)\n")
cat("  - world_bank, surveys, income_data (from data/raw/ if available)\n")
cat("\nTip: Use head(dataset_name) to preview a dataset\n")
cat(strrep("=", 70), "\n")
