# Pizza Sales Analysis

![1  Dash 1](https://github.com/niladrimitra/PizzaAnalysis/assets/70979494/74d21bc6-9944-4a77-b5b8-a56a9cdbf898)

![3  Dash 2](https://github.com/niladrimitra/PizzaAnalysis/assets/70979494/b3a9cc46-ac15-4fa6-bd64-bc8f4fdb5427)

## Overview

This is a SQL portfolio project which uses a combination of tools to clean, transform and visualize data for a pizza store, hence enabling us to derive insights and find opportunities to increase sales. 

## Key Topics

The following topics will be used to explain the workflow of the project:
* Data Storage
* Tools Used
* Data Cleaning and Transformation
* Creating a Relational Database
* SQL Statements
* Data Visualization
* Derived Insights
* Running the Project

## Data Storage

The original dataset comprised of 4 separate csv files, which can be found on the Maven Analytics website. The dataset can be downloaded from [here](https://www.mavenanalytics.io/data-playground?search=pizza). The files are also present in the [csv_data](https://github.com/niladrimitra/PizzaAnalysis/tree/main/csv_data) folder. 

## Tools Used

The tools used in this project are:
* QuickDBD
* Microsoft Excel
* MySQL Workbench
* Power BI

## Data Cleaning and Transformation

1. The csv files were loaded in Excel.
2. A copy of each table was created.
3. The width of the columns were adjusted **(Auto Column Width)** to facilitate proper viewing.
4. Using **Power Query**, the date, time and currency data types for the columns were properly assigned.
5. The **trim()** function was used to remove all uneven spaces in each data cell.
6. The blank cells were detected using the **'Find and Select'** function and were populated with the **null** value.
7. Duplicates were removed using the **'Remove Duplicates'** function.
8. The pizza sizes depicted as S,M,L,X,XL,XXL were converted to Small, Medium, Large, XLarge, XXLarge with the **Find & Replace** function.
9. The .xlsx files are converted to .csv files so that it can be accessed by MySQL.

# Creating a Relational Database

A relational database is created using MySQL workbench, which will be used as a data source for Power BI and also to run SQL commands.

1. In MySQL Workbench, a new connection and a new dataset is created.
2. New tables are created within the dataset, and the csv files are loading into the corrosponding tables using the **'Table Data Input Wizard'** function.

# 
