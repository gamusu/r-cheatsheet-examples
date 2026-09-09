# R Cheatsheet Examples: Quantitative Social Science Edition

A collection of **reproducible, practical examples** for every function in popular R cheatsheets, focused on social science research applications.

Perfect for learners who want to see how cheatsheet functions actually work in practice.

---

## 🚀 Quick Start

1. **Clone this repo:**
   ```bash
   git clone https://github.com/gamusu/r-cheatsheet-examples.git
   cd r-cheatsheet-examples
   ```

2. **Set up R packages** (run once):
   ```r
   source('scripts/setup.R')
   ```

3. **Pick a cheatsheet and start learning:**
   - [Data Wrangling with dplyr](cheatsheets/01_data-wrangling/)
   - [Visualization with ggplot2](cheatsheets/02_visualization/)
   - [Data Tidying with tidyr](cheatsheets/03_tidying/)
   - [Statistical Modeling](cheatsheets/04_modeling/)

4. **Open an example file** and run code line-by-line in RStudio or R console.

---

## 📚 What's in Here?

Each cheatsheet folder contains:
- **README.md** — Overview of functions covered + learning objectives
- **examples.R** — All functions in one file (for quick reference)
- **example-01-function-name.R**, **example-02-...** — Individual function examples (beginner-friendly)

### Cheatsheets Included

| Cheatsheet | Functions | Est. Time |
|---|---|---|
| Data Wrangling (dplyr) | select, filter, mutate, arrange, summarize, group_by, join | 45 min |
| Visualization (ggplot2) | ggplot, geom_point, geom_bar, facet_wrap, themes | 40 min |
| Tidying (tidyr) | pivot_longer, pivot_wider, separate, unite | 25 min |
| Statistical Modeling | lm, glm, t.test, cor.test | 30 min |

---

## 💻 How to Use This Repo

### For Beginners
1. Start with the **learning path** below
2. Open one example file at a time
3. Run code **line-by-line** (don't copy-paste everything at once)
4. Modify examples — change variables, try different data
5. Check your R console output

### For Advanced Users
- Use individual files as **quick reference**
- Adapt examples for your own data
- See how functions combine in real workflows

### General Tips
- Each example includes comments explaining what the code does
- Use `?function_name` in R for official documentation
- Data is pre-loaded; just open the file and run it
- All examples are self-contained (no hidden dependencies)

---

## 🎯 Suggested Learning Path

**Beginner (2-3 hours total):**
1. dplyr: select, filter, mutate
2. ggplot2: scatter plots, histograms
3. dplyr: summarize, group_by
4. ggplot2: bar charts, facets

**Intermediate (2-3 hours):**
1. dplyr: all join types
2. tidyr: pivot_longer, pivot_wider
3. ggplot2: customizing themes
4. Statistical modeling: t-tests, correlation

**Advanced (variable):**
1. Complex data transformations
2. Statistical modeling: linear/logistic regression
3. Combining multiple techniques

👉 See [learning-path.md](learning-path.md) for a detailed roadmap with timing and prerequisites.

---

## 📊 Datasets Used

All examples use **real social science data**:

- **gapminder** — Life expectancy, GDP, population (1952–2007)
- **world_bank** — Development indicators by country
- **surveys** — Hypothetical survey data (social attitudes)
- **income_data** — Income, education, demographics

See [data/raw/README.md](data/raw/README.md) for details on each dataset, sources, and citations.

**All datasets are < 2MB** and included in the repo (no downloads needed).

---

## 🛠 Prerequisites

- **R 4.0+** (older versions may work, but untested)
- **RStudio** (recommended, but any R editor works)
- ~500 MB disk space (after installing packages)

### Packages Installed
The `setup.R` script installs:
- `dplyr`, `tidyr`, `ggplot2` (tidyverse core)
- `gapminder` (sample data)
- `rmarkdown` (optional, for rendering)

Run this once:
```r
source('scripts/setup.R')
```

---

## 📁 Repository Structure

```
r-cheatsheet-examples/
├── README.md                          # You are here
├── learning-path.md                   # Step-by-step guide
├── setup.md                           # Troubleshooting setup issues
│
├── scripts/
│   ├── setup.R                        # Install packages
│   └── load-data.R                    # Load example datasets
│
├── data/
│   ├── raw/
│   │   ├── README.md                  # Data documentation
│   │   ├── gapminder.csv
│   │   ├── world_bank.csv
│   │   └── ...
│   └── processed/
│       └── (transformed datasets, if any)
│
├── cheatsheets/
│   ├── 01_data-wrangling/
│   │   ├── README.md
│   │   ├── examples.R                 # All functions, one file
│   │   ├── example-01-select.R
│   │   ├── example-02-filter.R
│   │   └── ...
│   │
│   ├── 02_visualization/
│   │   ├── README.md
│   │   ├── examples.R
│   │   └── example-*.R
│   │
│   ├── 03_tidying/
│   ├── 04_modeling/
│   └── ...
│
├── LICENSE
└── .gitignore
```

---

## 🤝 Contributing

Found a bug? Want to add examples?

1. Fork the repo
2. Create a branch: `git checkout -b feature/your-feature`
3. Make changes (follow the example format in the template)
4. Test your code
5. Submit a pull request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📖 Example File Format

Each example file follows this structure:

```r
# ============================================================================
# EXAMPLE: Using select() to choose columns
# ============================================================================

# Load data (automatically available if you ran setup.R)
library(dplyr)
data(gapminder)

# WHAT THIS DOES:
# select() keeps only the columns you specify
# It's useful when you have many columns but only need a few

# Basic usage: select specific columns
gapminder %>%
  select(country, year, lifeExp)

# Select a range of columns
gapminder %>%
  select(country:year)

# Drop specific columns (use -)
gapminder %>%
  select(-gdpPercap)

# Pro tip: Use helper functions with select()
gapminder %>%
  select(starts_with("life"))

# ============================================================================
# YOUR TURN:
# Try selecting only country and population columns from gapminder
# (Hint: the column is called 'pop')
```

---

## 🆘 Getting Help

- **Error running setup.R?** → See [setup.md](setup.md)
- **Package installation fails?** → Check your internet connection and R version
- **Don't understand an example?** → Look at the comments and run `?function_name`
- **Found a bug?** → Open an issue on GitHub

---

## 📝 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.

Feel free to use these examples in your own teaching, courses, or materials.

---

## 🙏 Acknowledgments

- Examples inspired by [RStudio's official cheatsheets](https://posit.co/resources/cheatsheets/)
- Data from [Gapminder](https://www.gapminder.org/), [World Bank Open Data](https://data.worldbank.org/)
- Built for social science learners everywhere

---

## 💡 Tips for Getting the Most Out of This Repo

1. **Don't just read — run the code.** Seeing output matters.
2. **Modify examples.** Change variables, try different data subsets.
3. **Combine functions.** Once you understand each, link them together.
4. **Keep the cheatsheet handy.** Refer back to the visual guide alongside these examples.
5. **Build something.** After a few cheatsheets, try applying them to a small dataset of your own.

Happy learning! 📊
