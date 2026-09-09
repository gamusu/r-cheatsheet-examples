# Learning Path: R Cheatsheet Examples

A guided roadmap to get the most out of these examples, organized by skill level and topic.

---

## 📍 Where to Start?

**Pick your level:**

- **Beginner:** Never used dplyr/ggplot2 before? Start with "Beginner Path" below
- **Intermediate:** Know the basics, want to learn more? Jump to "Intermediate Path"
- **Advanced:** Want to combine techniques? Go straight to "Advanced Path"

---

## 🟢 BEGINNER PATH (2–3 hours)

**Goal:** Learn the fundamentals of data wrangling and visualization

### Session 1: Data Wrangling Basics (45 minutes)

| Step | File | Topic | Time |
|---|---|---|---|
| 1 | `01_data-wrangling/example-01-select.R` | Choosing columns | 5 min |
| 2 | `01_data-wrangling/example-02-filter.R` | Filtering rows | 7 min |
| 3 | `01_data-wrangling/example-03-mutate.R` | Creating columns | 7 min |
| ✅ | **Practice** | Combine all three above | 10 min |
| 4 | `01_data-wrangling/example-04-arrange.R` | Sorting data | 5 min |
| 5 | `01_data-wrangling/example-05-summarize.R` | Basic summaries | 7 min |

**Session 1 practice exercise:**
```r
# Create a dataset showing:
# - Only countries in Africa
# - Only the year 2007
# - Columns: country, lifeExp, gdpPercap
# - Sorted by life expectancy (highest first)

# Hint: Use select() → filter() → arrange()
```

### Session 2: Visualization Basics (40 minutes)

| Step | File | Topic | Time |
|---|---|---|---|
| 1 | `02_visualization/example-01-ggplot.R` | Basic scatterplot | 7 min |
| 2 | `02_visualization/example-02-geom-point.R` | Customizing points | 7 min |
| 3 | `02_visualization/example-03-geom-bar.R` | Bar charts | 7 min |
| ✅ | **Practice** | Create two charts | 10 min |
| 4 | `02_visualization/example-04-facets.R` | Small multiples | 7 min |

**Session 2 practice exercise:**
```r
# Create a bar chart showing:
# - Life expectancy by continent (2007 only)
# - Sorted from highest to lowest

# Hint: Use filter() → group_by() → summarize() then ggplot()
```

**End of Beginner Path:** You can now:
- ✓ Filter and select data
- ✓ Create new columns
- ✓ Make basic charts
- ✓ Combine multiple operations with pipes

---

## 🟡 INTERMEDIATE PATH (2–3 hours)

**Prerequisites:** Completed Beginner Path or familiar with dplyr/ggplot2 basics

**Goal:** Learn advanced techniques and combine functions in real workflows

### Session 1: Advanced Data Wrangling (50 minutes)

| Step | File | Topic | Time |
|---|---|---|---|
| 1 | `01_data-wrangling/example-06-group-by.R` | Grouping and summarizing | 12 min |
| 2 | `01_data-wrangling/example-07-joins.R` | Joining datasets | 15 min |
| 3 | `03_tidying/example-01-pivot-longer.R` | Wide → Long format | 10 min |
| ✅ | **Practice** | Multi-step data pipeline | 15 min |

**Session 1 practice exercise:**
```r
# Create a summary showing:
# - Average life expectancy by continent
# - Average GDP per capita by continent
# - For 2007 only
# - Sorted by life expectancy

# Hint: Use filter() → group_by() → summarize()
```

### Session 2: Advanced Visualization (45 minutes)

| Step | File | Topic | Time |
|---|---|---|---|
| 1 | `02_visualization/example-05-themes.R` | Customizing appearance | 10 min |
| 2 | `02_visualization/example-06-colors.R` | Color scales | 10 min |
| 3 | `02_visualization/example-07-labels.R` | Titles and labels | 10 min |
| ✅ | **Practice** | Polish a chart | 15 min |

### Session 3: Putting It Together (30 minutes)

Create a **mini-project** combining data wrangling + visualization:

```r
# Project: Create a visualization showing life expectancy trends
# 
# Steps:
# 1. Filter data for 4–5 countries of interest
# 2. Create a line chart with year on x-axis, life expectancy on y-axis
# 3. Add appropriate titles, labels, and theme
# 4. Customize colors for each country
#
# Files to reference:
# - 01_data-wrangling/example-02-filter.R (filter data)
# - 02_visualization/example-08-lines.R (line charts)
# - 02_visualization/example-07-labels.R (titles)
```

**End of Intermediate Path:** You can now:
- ✓ Group data and calculate summaries
- ✓ Join multiple datasets
- ✓ Reshape data (wide ↔ long)
- ✓ Create publication-quality charts
- ✓ Combine multiple operations into workflows

---

## 🔴 ADVANCED PATH (Variable)

**Prerequisites:** Completed Intermediate Path or advanced R knowledge

**Goal:** Solve complex problems and combine advanced techniques

### Real-World Project 1: Comparative Analysis

**Goal:** Compare economic and health indicators across regions

```r
# Project: Regional economic/health comparison
# 
# Questions to answer:
# 1. Which regions have the highest life expectancy? (2007)
# 2. How does life expectancy correlate with GDP per capita?
# 3. Which countries have improved the most since 1952?
# 4. Is the relationship between GDP and life expectancy the same everywhere?
#
# Skills needed:
# - filter(), group_by(), summarize(), mutate()
# - ggplot2 scatter plots with color/size mapping
# - faceting by region
#
# Estimated time: 60–90 minutes
```

### Real-World Project 2: Time Series Analysis

**Goal:** Track changes over time and identify trends

```r
# Project: Tracking development over 50 years
#
# Questions to answer:
# 1. How has global life expectancy changed? (1952–2007)
# 2. Which continents improved fastest?
# 3. Are gaps between rich and poor countries shrinking or growing?
# 4. Which countries are outliers (better/worse than expected)?
#
# Skills needed:
# - Line charts with multiple groups
# - facet_wrap() for comparisons
# - Color gradients
# - Annotations
#
# Estimated time: 90–120 minutes
```

### Real-World Project 3: Statistical Modeling

**Goal:** Build predictive models and understand relationships

```r
# Project: Predicting life expectancy from economic factors
#
# Questions to answer:
# 1. How strongly does GDP predict life expectancy?
# 2. Do different countries follow different patterns?
# 3. Which countries are outliers?
# 4. How has this relationship changed over time?
#
# Skills needed:
# - 04_modeling/lm.R (linear regression)
# - Extracting model predictions
# - Visualization of models
#
# Estimated time: 120+ minutes
```

---

## 📋 Self-Assessment Checklist

**After Beginner Path, you should be able to:**
- [ ] Select specific columns from a dataset
- [ ] Filter rows based on conditions
- [ ] Create new columns using mutate()
- [ ] Create basic scatter plots and bar charts
- [ ] Understand and use the pipe operator (%>%)

**After Intermediate Path, you should be able to:**
- [ ] Group data and calculate summaries
- [ ] Join two datasets together
- [ ] Reshape data from wide to long format
- [ ] Customize colors, themes, and labels in charts
- [ ] Combine 5+ operations into a data pipeline

**After Advanced Path, you should be able to:**
- [ ] Solve real-world data analysis problems
- [ ] Create publication-quality visualizations
- [ ] Build and interpret statistical models
- [ ] Handle messy real-world data
- [ ] Document and share your analysis

---

## 🎯 Tips for Learning

1. **Don't rush** — Spend time on each example. Run the code, modify it, understand it.
2. **Use RStudio** — The IDE makes learning much easier (autocomplete, help, visualization)
3. **Practice often** — The best way to learn is by doing. Modify examples constantly.
4. **Build small projects** — After each section, try combining techniques on your own data.
5. **Use help** — `?function_name` and Google are your friends. Everyone does it.
6. **Connect concepts** — Notice how select() + filter() work together, etc.

---

## 🔗 Resources Beyond This Repo

**Learning R:**
- [R for Data Science](https://r4ds.had.co.nz/) (free online book)
- [RStudio Cheatsheets](https://posit.co/resources/cheatsheets/) (visual guides)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/r) (Q&A)

**Official Documentation:**
- [dplyr reference](https://dplyr.tidyverse.org/reference/index.html)
- [ggplot2 reference](https://ggplot2.tidyverse.org/reference/)
- [tidyr reference](https://tidyr.tidyverse.org/reference/index.html)

**Social Science Data:**
- [Gapminder](https://www.gapminder.org/) (health, economics, demographics)
- [World Bank Open Data](https://data.worldbank.org/)
- [Harvard Dataverse](https://dataverse.harvard.edu/) (research data)

---

## 🚀 Next Steps After This Repo

Once you've completed this learning path:

1. **Apply to your own data** — Load your own dataset and try the techniques
2. **Explore advanced tidyverse** — Learn about furrr, purrr, forcats
3. **Statistical modeling** — Learn more about lm(), glm(), and model interpretation
4. **Reproducible research** — Learn R Markdown for creating reports
5. **Shiny dashboards** — Build interactive web apps with Shiny

---

**Questions?** Check the README in each cheatsheet folder or open an issue on GitHub.

Happy learning! 📊
