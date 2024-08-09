# DataScience_Hospitalisation-Costs-Analysis
![Hospitalization Costs Analysis](https://github.com/user-attachments/assets/5c062e9e-6abb-43a9-8a20-ac9e1d1fb390)

![Hospitalization Costs Analysis (1)](https://github.com/user-attachments/assets/7ed6dfc6-069b-4c51-abe8-b500f5b62aba)

![Hospitalization Costs Analysis](https://github.com/user-attachments/assets/71f10fd1-2a84-4b24-b0c4-7d66a3b97b2c)

# Kaggle Link : 
https://www.kaggle.com/code/sahilnbajaj/healthcare-cost-prediction-regression-analysis

# Tableau Link : https://public.tableau.com/app/profile/sahil.bajaj5153/viz/Healthcare_Analysis_17232202178470/HospitalizationCostsAnalysis

# Problem Statement : 
A significant public health concern is the rising cost of healthcare. Therefore, it's crucial to be able to predict future costs and gain a solid understanding of their causes. The
insurance industry must also take this analysis seriously. This analysis may be used by
healthcare insurance providers to make a variety of strategic and tactical decisions.

# Objective  
The objective of this project is to predict patients’ healthcare costs and to identify factors contributing to this prediction. It will also be useful to learn the interdependencies of different factors and comprehend the significance of various tools at various stages of
the healthcare cost prediction process.

# Tasks of Project
Week 1: Data Science Tasks
1. Data Collection and Preparation
Collate the files: Merge the Hospitalization details.xlsx, Medical Examinations.xlsx, and Names.xlsx datasets.
Check for missing values: Identify and handle missing values appropriately.
Clean up data:
Remove rows with trivial values (like '?').
Transform categorical variables using suitable methods (one-hot encoding for nominal and ordinal variables).
For the State ID, focus on R1011, R1012, and R1013. Create dummy variables for these states.
2. Data Transformation
Calculate Age: Use the date of birth to calculate the age of patients.
Determine Gender: Extract gender information from the salutations in names and create a new field.
3. Data Visualization
Visualize cost distribution: Create a histogram, box plot, and swarm plot for hospitalization costs.
Distribution Analysis: Compare cost distributions across genders and hospital tiers.
Median Cost Visualization: Create a radar chart showing median hospitalization costs for each hospital tier.
Frequency and Distribution:
Create a frequency table and stacked bar chart to visualize the count of people in different city and hospital tiers.
4. Hypothesis Testing
Test the following null hypotheses:
The average hospitalization costs for the three types of hospitals are not significantly different.
The average hospitalization costs for the three types of cities are not significantly different.
The average hospitalization cost for smokers is not significantly different from the average cost for nonsmokers.
Smoking and heart issues are independent.
5. Correlation Analysis
Correlation Matrix: Use a heatmap to visualize the correlation between predictors.
Week 2: Machine Learning and SQL Tasks
1. Regression Model Development
Develop Models:
Linear Regression or Ridge Regression with k-fold cross-validation.
Stratified 5-fold cross-validation for model building and validation.
Apply standardization techniques, hyperparameter tuning, and regularization techniques.
Use sklearn-pipelines to streamline the workflow.
Develop a Gradient Boosting model and determine variable importance scores.
2. Cost Prediction Scenario
Case Study: Estimate hospitalization costs for a specific patient (Ms. Jayna) using the developed models.
3. SQL Analysis
Data Merging: Merge the data tables using appropriate keys and constraints.
SQL Queries:
Retrieve information about people who are diabetic and have heart problems, along with their average age, number of dependent children, BMI, and hospitalization costs.
Find the average hospitalization cost for each hospital tier and city level.
Determine the number of people who have had major surgery with a history of cancer.
Count the number of tier-1 hospitals in each state.
Week 2: Tableau Dashboard
Dashboard Creation: Create a dashboard in Tableau focusing on data storytelling, using appropriate chart types and business metrics.
Implementation Plan
Data Preparation:

Load the datasets.
Merge them into a single dataframe.
Handle missing values and clean the data.
Feature Engineering:

Create new features like age and gender.
Transform categorical variables as needed.
Exploratory Data Analysis (EDA):

Visualize data distributions.
Analyze distributions across different segments (gender, hospital tier, etc.).
Hypothesis Testing:

Perform statistical tests to validate the hypotheses.
Model Development:

Train and validate regression models.
Tune hyperparameters and standardize data.
Evaluate models using k-fold cross-validation.
Predictive Analysis:

Predict hospitalization costs for the case study.
SQL Analysis:

Execute SQL queries to extract and analyze relevant data.
Dashboard Development:

Build a Tableau dashboard to present key insights and visualizations.
