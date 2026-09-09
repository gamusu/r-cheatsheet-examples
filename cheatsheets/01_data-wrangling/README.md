# Data Wrangling with dplyr

Learn to clean, filter, and transform data efficiently using **dplyr** — the tidyverse's data manipulation powerhouse.

---

## 📋 What You'll Learn

After working through these examples, you'll be able to:

- ✓ **Select** specific columns from a dataset
- ✓ **Filter** rows based on conditions
- ✓ **Mutate** (create and modify) columns
- ✓ **Arrange** data by sorting
- ✓ **Summarize** data and calculate summaries
- ✓ **Group** data and perform calculations by group
- ✓ **Join** multiple datasets together

**Estimated time:** 45–60 minutes

---

## 📁 Files in This Folder

| File | Function | Time |
|---|---|---|
| `example-01-select.R` | Choose specific columns | 5 min |
| `example-02-filter.R` | Keep/remove rows based on conditions | 7 min |
| `example-03-mutate.R` | Create and modify columns | 7 min |
| `example-04-arrange.R` | Sort data | 5 min |
| `example-05-summarize.R` | Calculate summaries (mean, sum, etc.) | 7 min |
| `example-06-group-by.R` | Group data and calculate by group | 10 min |
| `example-07-joins.R` | Combine multiple datasets | 15 min |
| `examples.R` | All functions in one file | Reference |

**New to R?** Start with `example-01-select.R` and work down. Each example takes 5–10 minutes.

---

## 🎯 Learning Path

### Beginner (first 30 minutes)
1. `example-01-select.R` — Pick columns
2. `example-02-filter.R` — Pick rows
3. `example-03-mutate.R` — Create new columns

### Intermediate (next 20 minutes)
4. `example-04-arrange.R` — Sort data
5. `example-05-summarize.R` — Calculate summaries

### Advanced (final 15 minutes)
6. `example-06-group-by.R` — Work with groups
7. `example-07-joins.R` — Combine datasets

---

## 🚀 Quick Start

1. Make sure you've run the setup:
   ```r
   source('scripts/setup.R')
   ```

2. Open **example-01-select.R** and run the code line-by-line

3. Read the comments to understand what each line does

4. Try modifying the examples (change column names, conditions, etc.)

---

## 💡 Key Concepts

### The Pipe: `%>%`

Most dplyr code uses the pipe operator `%>%`, which means "then":

```r
# WITHOUT pipe (hard to read):
arrange(filter(select(gapminder, country, year, lifeExp), year == 2007), desc(lifeExp))

# WITH pipe (easy to read):
gapminder %>%
  select(country, year, lifeExp) %>%
  filter(year == 2007) %>%
  arrange(desc(lifeExp))
```

Read it as: "Take gapminder, **then** select these columns, **then** filter, **then** arrange"

### Function Workflow

Most dplyr functions follow the same pattern:

```r
data %>%
  dplyr_function(column_name, argument)
```

**Example:**
```r
gapminder %>%
  filter(year == 2007)    # First argument is data (passed via pipe)
```

---

## 🔗 Useful Resources

- **Official dplyr guide:** https://dplyr.tidyverse.org/
- **RStudio cheatsheet:** https://posit.co/resources/cheatsheets/
  (Look for "Data Transformation with dplyr")
- **R for Data Science book:** https://r4ds.had.co.nz/ (free online)
  (Chapters 5–6 cover dplyr in detail)

---

## ❓ Common Questions

**Q: Why use dplyr instead of base R?**
A: dplyr is faster, easier to read, and works seamlessly with other tidyverse tools. Once you learn it, you'll spend less time debugging.

**Q: What if I need to do something not covered here?**
A: Check the official docs: `?function_name` in R, or visit https://dplyr.tidyverse.org/

**Q: Can I combine multiple dplyr functions?**
A: Yes! That's the whole point of the pipe. See `example-07-joins.R` for complex examples.

---

## 👉 Getting Started

Open `example-01-select.R` in RStudio and run the first few lines. You'll see how it works!

Need help? Check individual example files — each one is self-contained and heavily commented.

---

## 📝 Tips for Success

1. **Don't memorize** — Learn to use `?function_name` and Google
2. **Experiment** — Change variables and data to see what happens
3. **Run line-by-line** — Don't copy-paste everything at once
4. **Build on examples** — Once you understand each function, combine them
5. **Use RStudio** — The IDE makes learning much easier

Happy wrangling! 📊
