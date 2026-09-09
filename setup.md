# Setup Troubleshooting Guide

Having issues getting started? This guide covers common problems and solutions.

---

## 🔴 Common Problems & Solutions

### Problem 1: "R: command not found" or "R is not installed"

**Symptoms:**
- Can't run R from terminal/command line
- Error message when trying to run `R`

**Solutions:**

**On macOS:**
```bash
# Install R from Homebrew
brew install r

# Or download from https://cran.r-project.org/
```

**On Windows:**
- Download from https://cran.r-project.org/bin/windows/base/
- Run the installer and follow prompts
- Restart your computer after installation

**On Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install r-base
```

---

### Problem 2: "Cannot install package" or permission denied

**Symptoms:**
- Error like: "Permission denied (13)" or "cannot create directory"
- Happens when running `setup.R`

**Solutions:**

**Try installing as user (preferred):**
```r
# In R console, run this first:
options(pkgType = "source")

# Then try setup again:
source('scripts/setup.R')
```

**Or specify a user library:**
```r
# Create a personal library directory
dir.create("~/R_libs", showWarnings = FALSE)
.libPaths("~/R_libs")

# Then run setup
source('scripts/setup.R')
```

**Last resort (run R as admin):**
- macOS: Usually not necessary
- Windows: Right-click RStudio or cmd.exe → "Run as administrator"
- Linux: Use `sudo` (but this is not recommended)

---

### Problem 3: Package installation fails with "dependencies fail"

**Symptoms:**
- Error like "package 'xyz' could not be loaded because"
- Happens when installing tidyverse packages

**Solutions:**

**Try updating packages:**
```r
# Update installed packages
update.packages()

# Then run setup
source('scripts/setup.R')
```

**Try installing individually:**
```r
# Install one package at a time to identify the problem
install.packages("dplyr", dependencies = TRUE)
install.packages("ggplot2", dependencies = TRUE)
```

**Check R version:**
```r
# Some packages need R 4.0+
R.version

# If older than 4.0, consider updating R from https://cran.r-project.org/
```

---

### Problem 4: "No such file or directory"

**Symptoms:**
- Error when running: `source('scripts/setup.R')`
- Message: "Cannot find scripts/setup.R"

**Solutions:**

**Check your working directory:**
```r
# See where R thinks you are
getwd()

# Should output something like: "/Users/yourname/r-cheatsheet-examples"
```

**Change to the repo directory:**
```r
# macOS/Linux
setwd("~/path/to/r-cheatsheet-examples")

# Windows
setwd("C:/path/to/r-cheatsheet-examples")

# Then run setup
source('scripts/setup.R')
```

**Easier solution: Use RStudio**
1. Open RStudio
2. File → Open Project → select the repo folder
3. Now your working directory is automatically set correctly
4. Run `source('scripts/setup.R')`

---

### Problem 5: Gapminder package won't load

**Symptoms:**
- Error: "there is no package called 'gapminder'"
- Happens when running examples

**Solutions:**

**Install gapminder specifically:**
```r
install.packages("gapminder")
```

**Verify it's installed:**
```r
# This should not produce an error:
library(gapminder)
```

**Check package location:**
```r
# See where R is looking for packages
.libPaths()

# Try installing in default location:
install.packages("gapminder", lib = .libPaths()[1])
```

---

### Problem 6: Examples produce unexpected output

**Symptoms:**
- Code runs but output looks wrong
- Different results than expected

**Solutions:**

**Check your data:**
```r
# Make sure gapminder loaded correctly
head(gapminder)
nrow(gapminder)
ncol(gapminder)

# Should show 1704 rows, 6 columns
```

**Check package version:**
```r
# Version mismatch can cause issues
packageVersion("dplyr")
packageVersion("ggplot2")

# These should be recent (2020+)
# If very old, update:
update.packages()
```

**Clear your environment:**
```r
# Sometimes old variables cause problems
rm(list = ls())

# Then reload:
source('scripts/load-data.R')
```

---

### Problem 7: RStudio shows "1 error, 1 warning"

**Symptoms:**
- Red error message at bottom of console
- Code won't run
- Yellow warning messages

**Solutions:**

**Read the error message carefully:**
- Click on the error to jump to the problem line
- Google the error message (add "R" to search)

**Common error: unexpected symbol**
- Usually means you typed `=` instead of `==` in filter()
- Or forgot a closing parenthesis

**Common warning: package built under R version...**
- Usually harmless; can ignore it
- Package still works fine

---

## ✅ Testing Your Setup

Once you've run `setup.R`, test everything:

```r
# Load libraries (should produce no errors)
library(dplyr)
library(ggplot2)

# Load data (should show 1704 rows)
data(gapminder)
head(gapminder)

# Try a simple example
gapminder %>%
  filter(year == 2007) %>%
  select(country, lifeExp)

# Make a simple plot
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()
```

If all that works, **your setup is complete!**

---

## 🆘 Still Stuck?

**Before giving up, try:**

1. **Google the error message** — Add "R" or "dplyr" to search
2. **Check Stack Overflow** — Most errors have been solved before
3. **Read the error carefully** — Often tells you exactly what's wrong
4. **Restart R** — In RStudio: Session → Restart R
5. **Start fresh** — Delete `.Rhistory` and restart

**If none of that works:**
1. Open an issue on GitHub with:
   - The exact error message
   - Your R version: `R.version`
   - Your OS (macOS, Windows, Linux)
   - What you were trying to do

---

## 📝 Useful R Commands

```r
# See your R version
R.version

# See working directory
getwd()

# Change working directory
setwd("path/to/directory")

# See installed packages
installed.packages()

# Install a package
install.packages("package_name")

# Load a package
library(package_name)

# Check if package is installed
require(package_name)

# Update all packages
update.packages()

# See what's in your environment
ls()

# Clear environment
rm(list = ls())

# Get help on a function
?function_name

# See available datasets
data()
```

---

## 🎯 Next Steps

Once setup is working:
1. ✅ You've completed the hardest part!
2. 📖 Open `README.md` for an overview
3. 🚀 Start with `cheatsheets/01_data-wrangling/example-01-select.R`
4. 💪 Work through examples one at a time

---

**Good luck! You've got this.** 📊

If you have suggestions for improving this guide, open an issue or pull request.
