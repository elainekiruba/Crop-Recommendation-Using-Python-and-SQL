# Crop-Recommendation-Using-Python-and-SQL

---

# 🌾 Crop Recommendation System

This Python project intelligently recommends the most suitable crop based on **soil nutrients** and **environmental conditions** using a simple distance-based algorithm. It also stores every user interaction in a **MySQL database** for future tracking and analysis.

---

## 📌 Project Overview

The Crop Recommendation System uses a CSV dataset to suggest the best crop based on the following inputs:

- Nitrogen (N)
- Phosphorus (P)
- Potassium (K)
- Temperature
- Humidity
- pH
- Rainfall

It finds the closest match from the dataset and stores both the input and recommendation in a **MySQL** table for record-keeping.

---

## 📦 Requirements

### Python Packages
- `mysql-connector-python`
- Standard libraries: `csv`, `math`, `os`

### Software
- Python (3.x)
- MySQL Server (e.g., XAMPP, WAMP, MySQL Workbench)

---

## 🧠 Code Modules Breakdown

### A. `load_csv_data(filename)`
- Loads the dataset from `Crop_recommendation.csv`
- Converts data to float where applicable
- Returns a list of rows for further processing

### B. `recommend_crop(user_input, data)`
- Calculates Euclidean distance between user input and dataset rows
- Returns the crop label with the **minimum distance**

### C. `save_to_mysql(user_input, recommendation)`
- Connects to MySQL
- Automatically creates the `recommendations` table if it doesn't exist
- Inserts the record: (N, P, K, Temperature, Humidity, pH, Rainfall, Recommended Crop)

### D. `get_user_input()`
- Collects user values for soil and weather parameters via CLI

### E. `main()`
- Orchestrates the program flow:
  - Load data
  - Get user input
  - Recommend crop
  - Save recommendation
  - Optionally display saved history

### F. `fetch_recommendations()`
- Displays all stored records from the MySQL database

---

## 🛢️ MySQL Database Setup

1. Make sure your **MySQL server is running**
2. Open MySQL Command Line, phpMyAdmin, or Workbench
3. Run:

```sql
CREATE DATABASE crop_db;
```

---

## 🧪 Sample Input & Output

**User Input**:

```
N = 90
P = 42
K = 43
Temperature = 23.0
Humidity = 78.5
pH = 6.5
Rainfall = 150
```

**Output**:

```
Recommended Crop: rice
```

**Stored Record Example**:

```sql
+----+----+----+----+-------------+----------+-----+----------+-------------------+
| N  | P  | K  | Temp | Humidity | pH  | Rainfall | Recommendation |
+----+----+----+----+-------------+----------+-----+----------+-------------------+
| 90 | 42 | 43 | 23.0 |   78.5    | 6.5 |   150    | rice              |
+----+----+----+----+-------------+----------+-----+----------+-------------------+
```



## 📁 Project Files

* `crop_recommendation.py` – Main program logic
* `Crop_recommendation.csv` – Dataset for recommendations
* `README.md` – Project documentation

```

