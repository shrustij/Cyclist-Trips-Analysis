# Cyclist-Trips-Analysis
Google Data Analytics Capstone Project Solution
Google Data Analytics Capstone Project

Table of Contents:
Introduction
Ask Phase
Prepare Phase
Process Phase
Analyze Phase
Share Phase
Act Phase

Introduction

Scenario :
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations. 

Ask Phase
Guiding Questions:
What is the problem you are trying to solve?
The ultimate goal is to find a proper marketing strategy to turn casual riders into annual riders 
How can your insights drive business decisions?
The insights will be helpful in turning more casual riders into annual riders.
Key Tasks
Identify business task.
Consider key stakeholders.
Deliverable
A clear statement of business task.

Prepare Phase
Guiding Questions:
Where is your data located?
I have downloaded data for the year 2022 from the link https://divvy-tripdata.s3.amazonaws.com/index.html and store it locally in my laptop.
How is the data organised?
Data is organised by month in different csv files
Are there issue with bias or credibility in the data? Does your data ROCCC?
There is no issue with bias and credibility as it is downloaded from reliable source.
As well as data is ROCCC as it is reliable, original, comprehensive, current and cited.
How are you addressing licensing, security, privacy and accessibility?
Data is not having any personal information like name, email, phone number so it is private and secure so there is no issue with who access the data  and as it is from reliable source so  it is licensed.
How did you verify the data integrity?
All the csv  file have consistent columns with same type of data.
How does it help you to answer your question?
The data in  all files will help to get some insights regarding casual riders and annual members.
Are there any problems with data?
Data should be stored in more correct format for station Id so it would be more helpful.
Key Tasks
Download data and store appropriately.
Identify how it’s organised.
Sort and filter the data
Determine the credibility of the data.
Deliverable
A description of all the data sources used.

Process Phase
Guiding Questions:
What tools you are using and why?
I am using R and Excel as to import data in SQL will be more difficult task and in Excel  and R both I can directly do some visualizations.
Have you ensured your data’s integrity?
Yes I have ensured the data’s integrity.
What steps you have taken to make sure that your data is clean?
To make sure the data is clean I removed all the duplicated rows.
How can you verify your data is clean and ready to analyse?
By running the code of removing duplicates in R again and if it removes more row it means data was not clean but if it removes no rows then it is clean as well as I removed all the rows which had null values or no values in it’s columns.
Have you documented your cleaning process so you can review and share those results?
Yes, this is the document.
Key Tasks
Check the data for errors.
Choose your tools.
Transform the data so you can work with it effectively.
Document the cleaning process.

Deliverable:
Documentation of cleaning and manipulation of data.

Analyze Phase
Guiding Questions:
How should you organize your data to perform analysis on it?
I have combined all the CSV files in one dataframe using R to perform analysis on it.
Has your data been properly formatted?
Yes, I cleaned the data by removing the duplicates and null values rows furthermore did some cleaning in excel to make sure there is no inconsistent data.
What surprises did you discover in the data?
I discovered that number of riders who are member are actually more than number of casual riders

What trends and relationships did you find in the data?
How will these insights help you answer business questions
Key Tasks
Aggregate your data so its useful and accessible.
Organize and format your data.
Perform Calculations.
Identify trends and relationships.
Deliverable
A summary of your analysis.

Share Phase
Guiding Questions:
Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently? 
Yes
What story does your data tell? 
Number of riders who are member are more but still average ride length of casual riders is high than average ride length of members.
How do your findings relate to your original question?
It relates to answer the good marketing strategy
Who is your audience? What is the best way to communicate with them? 
Audience is marketing team and best way is with presentation.
Can data visualization help you share your findings? 
yes.
Is your presentation accessible to your audience? 
Yes
Key Tasks
Determine the best way to share your findings. 
Create effective data visualizations. 
Present your findings. 
Ensure your work is accessible. 
Deliverable
Supporting visualizations and key findings 

Act Phase
Guiding Questions:
What is your final conclusion based on your analysis?
How could your team and business apply your insights?
What next steps would you or your stakeholders take based on your findings?
Is there additional data you could use to expand on your findings?
Key Tasks:
Create your portfolio.
Add your case study.
Practice presenting your case study to a friend or family member. 
Deliverable:
Your top three recommendations based on your analysis 






