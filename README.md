🧹 Task 1 – Data Cleaning and Preprocessing
📁 Dataset Used
Netflix Movies and TV Shows Dataset
Source: Kaggle - Netflix Movies and TV Shows

🛠️ Tools Used
Python

Pandas Library

Jupyter Notebook / Colab

✅ Cleaning Steps Performed
Loaded the dataset into a Pandas DataFrame.

Handled missing values:

Replaced disguised nulls (e.g., empty strings) with NaN.

Removed rows with missing values in the date_added column.

Removed duplicate rows using .drop_duplicates().

Standardized the date format in the date_added column:

Converted from September 24, 2021 → 24-09-2021.

Renamed columns and checked data types (if applicable).

Exported the cleaned dataset to cleaned_dataset.csv.

📂 Files in This Repo

File Name	Description
Task1.ipynb	Jupyter Notebook with all cleaning code
cleaned_dataset.csv	Cleaned version of the dataset
README.md	Description of task and processing steps
📚 Learning Outcomes
Understood and applied key data cleaning steps using Pandas.

Learned to identify and remove missing or inconsistent data.

Practiced formatting dates and exporting cleaned data.

Gained hands-on experience useful for real-world data analysis.
