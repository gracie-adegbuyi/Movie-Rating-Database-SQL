# Movie Rating Database System
A relational database project for managing movie ratings using MySQL.

## Project Overview
This project involves creating a relational database to manage movie ratings. It covers database schema design, data insertion, and complex querying using MySQL.

## Project Problem Statement
Entertainment companies often struggle to make data-driven decisions because their user and content data are trapped in separate, flat CSV files. This makes it impossible to answer critical business questions like:
* "Which genres are most popular among users in specific cities like Abuja or Lagos?"
* "How does movie age correlate with user satisfaction?"
* "Which target demographics are the most active reviewers?"

**The Solution:** A centralised MySQL database was designed and implemented to transform these disconnected files into a relational system, enabling fast, complex analysis of audience behaviour and content performance.

## Tools Used
* **Database:** MySQL
* **Editor:** MySQL Workbench
* **Data Source:** Google Sheets (CSV)

## 📊 Database Schema & ER Diagram
The system architecture uses a star-like schema to ensure data integrity and reduce redundancy. 
The database consists of three main tables:
* **Users Table:** Stores demographic details (Age, Gender, Location).
* **Movies Table:** Catalogue of films (Title, Release Year, Genre, Director).
* **Ratings Table:** A transactional bridge linking users to their movie experiences.
![ER Diagram](images/your_er_diagram_filename.png)

## Key Queries Performed
* Filtering users by age and location.
* Using logical operators to find specific movie genres.
* Sorting and pagination for data reporting.
