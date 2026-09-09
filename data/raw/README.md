# Datasets Used in Examples

All datasets in this directory are used in the cheatsheet examples. They're chosen to be:
- **Real social science data** (not toy datasets)
- **Easy to understand** (clear column names and meaning)
- **Small** (< 2 MB each, quick to load)
- **Public and citable** (from reputable sources)

---

## Dataset: gapminder

**File:** Built-in via `gapminder` R package (not a CSV)

**Description:** Health and economic indicators for 142 countries from 1952 to 2007

**Size:** 1,704 rows × 6 columns

**Columns:**
- `country` — Country name
- `continent` — Continent (Africa, Americas, Asia, Europe, Oceania)
- `year` — Year (1952–2007 in 5-year intervals)
- `lifeExp` — Life expectancy at birth (years)
- `pop` — Population
- `gdpPercap` — GDP per capita (US$)

**Example use:** Comparing life expectancy trends across countries and continents

**Citation:** 
Wickham, H. (2016). ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag.
Data originally from [Gapminder](https://www.gapminder.org/)

**Load in R:**
```r
library(gapminder)
data(gapminder)
head(gapminder)
```

---

## Dataset: world_bank *(template — add your own)*

**File:** `world_bank.csv`

**Description:** *(Edit this section with your actual data)*

**Size:** ? rows × ? columns

**Columns:**
- `country` — Country name
- `year` — Year
- `indicator` — Development indicator (e.g., "education_rate", "poverty")
- `value` — Numerical value

**Example use:** Comparing development indicators across countries over time

**Source:** [World Bank Open Data](https://data.worldbank.org/) (public domain)

**Load in R:**
```r
world_bank <- read.csv('data/raw/world_bank.csv')
head(world_bank)
```

---

## Dataset: surveys *(template — add your own)*

**File:** `surveys.csv`

**Description:** *(Edit this section with your actual data)*

**Size:** ? rows × ? columns

**Columns:**
- `respondent_id` — Unique respondent identifier
- `age` — Age in years
- `education` — Education level
- `income` — Annual income
- `political_affiliation` — (e.g., "left", "center", "right")
- `satisfaction` — Survey response (1–5 scale)

**Example use:** Exploring relationships between demographics and attitudes; summarizing survey responses

**Source:** Hypothetical data for illustration

**Load in R:**
```r
surveys <- read.csv('data/raw/surveys.csv')
head(surveys)
```

---

## Dataset: income_data *(template — add your own)*

**File:** `income_data.csv`

**Description:** *(Edit this section with your actual data)*

**Size:** ? rows × ? columns

**Columns:**
- `person_id` — Unique identifier
- `education_years` — Years of formal education
- `experience_years` — Years of work experience
- `income_usd` — Annual income (USD)
- `gender` — (M/F)
- `region` — Geographic region

**Example use:** Statistical modeling (predicting income from education/experience); visualizing relationships

**Source:** Hypothetical data for illustration

**Load in R:**
```r
income_data <- read.csv('data/raw/income_data.csv')
head(income_data)
```

---

## Adding Your Own Data

To add a new dataset to examples:

1. **Save as CSV** to `data/raw/your_data.csv`
2. **Update this README:**
   - Add dataset name and file path
   - Describe what it contains
   - List all columns and what they mean
   - Note the source and size
3. **Update `scripts/load-data.R`** to load your new dataset
4. **Create example files** using your new dataset

**Tips:**
- Keep datasets < 2–5 MB (ensures examples run fast)
- Use clear column names (lowercase, underscores: `life_expectancy` not `lifeExp`)
- Include a data dictionary (what each column means)
- Always cite your source and license

---

## Finding Datasets

Great sources for social science data:

- **[Gapminder](https://www.gapminder.org/)** — Health, economics, demographics
- **[World Bank Open Data](https://data.worldbank.org/)** — Development indicators
- **[IPUMS](https://www.ipums.org/)** — Census and survey data
- **[Harvard Dataverse](https://dataverse.harvard.edu/)** — Open access research data
- **[Kaggle Datasets](https://www.kaggle.com/datasets)** — Curated datasets (all domains)
- **[data.gov](https://www.data.gov/)** — US government data

---

## Data Ethics & Attribution

When using datasets:
- ✅ Always cite the original source
- ✅ Check the license (most public datasets are open for reuse)
- ✅ Respect privacy (use aggregated/anonymized data when possible)
- ❌ Don't claim data as your own
- ❌ Don't remove attribution when sharing

---

## Questions?

- Questions about a dataset? Check its original source
- Want to suggest a dataset? Open an issue on GitHub
- Having trouble loading data? See [setup.md](../../setup.md)
