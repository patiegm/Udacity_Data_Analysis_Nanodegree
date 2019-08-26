
This project focused on wrangling data from the WeRateDogs Twitter account using Python, documented in a Jupyter Notebook (wrangle_act.ipynb). This Twitter account rates dogs with humorous commentary. The rating denominator is usually 10, however, the numerators are usually greater than 10. They’re Good Dogs Brent wrangle WeRateDogs Twitter data to create interesting and trustworthy analyses and visualizations. WeRateDogs has over 4 million followers and has received international media coverage.

WeRateDogs downloaded their Twitter archive and sent it to Udacity via email exclusively for us to use in this project. This archive contains basic tweet data (tweet ID, timestamp, text, etc.) for all 5000+ of their tweets as they stood on August 1, 2017

1. Determine Objectives and Assess the Situation 
For this project we will use the CRISP-DM process. The first stage of the CRISP-DM process is to understand what you want to accomplish. The goal of this stage of the process is to uncover important factors that could influence the outcome of the project.

Project Details
Fully assessing and cleaning the entire dataset would require exceptional effort so only a subset of its issues (eight quality issues and two tidiness issues at minimum) needed to be assessed and cleaned.

The tasks for this project were:

Data wrangling, which consists of:
Gathering data
Assessing data
Cleaning data
Storing, analyzing, and visualizing our wrangled data
Reporting on 1) our data wrangling efforts and 2) our data analyses and visualizations
Key Points
Key points to keep in mind when data wrangling for this project:

We only want original ratings (no retweets) that have images. Though there are 5000+ tweets in the dataset, not all are dog ratings and some are retweets.
Fully assessing and cleaning the entire dataset requires exceptional effort so only a subset of its issues (eight (8) quality issues and two (2) tidiness issues at minimum) need to be assessed and cleaned.
Cleaning includes merging individual pieces of data according to the rules of tidy data.
The fact that the rating numerators are greater than the denominators does not need to be cleaned. This unique rating system is a big part of the popularity of WeRateDogs.
We do not need to gather the tweets beyond August 1st, 2017. We can, but note that we won't be able to gather the image predictions for these tweets since we don't have access to the algorithm used.
1.1 Outline of Steps 
We state what resources are available to us and in this section we discuss what it is we wish to achieve,
We decide which Questions we want to ask of the data
We will Gather the Data that we need
Import the data into Python to perform some initial Understanding of the data to help us understand the data, and Assess Data Quality and perform any resolve any Data Cleansing.
Perform Exploratory Data Analysis where we will research the answers to our questions
Create visualisations to aid exploration and research
Draw our Conclusion based on the data and communicate our findings
1.2 What are the desired outputs of the project? 
Accurate project submission:

Ensure you meet specifications for all items in the Project Rubric. Your project "meets specifications" only if it meets specifications for all of the criteria.
Ensure you have not included your API keys, secrets, and tokens in your project files.
If you completed your project in the Project Workspace, ensure the following files are present in your workspace, then click "Submit Project" in the bottom righthand corner of the Project Workspace page:
wrangle_act.ipynb: code for gathering, assessing, cleaning, analyzing, and visualizing data
wrangle_report.pdf or wrangle_report.html: documentation for data wrangling steps: gather, assess, and clean
act_report.pdf or act_report.html: documentation of analysis and insights into final data
twitter_archive_enhanced.csv: file as given
image_predictions.tsv: file downloaded programmatically
tweet_json.txt: file constructed via API
twitter_archive_master.csv: combined and cleaned data
any additional files (e.g. files for additional pieces of gathered data or a database file for your stored clean data)
Meet the Criteria of the Udacity Rubric:

Code Functionality

The student’s code is functional. All project code is contained in a Jupyter Notebook named wrangle_act.ipynb and runs without errors.
The student’s code is readable, i.e., uses good coding practices. The Jupyter Notebook has an intuitive, easy-to-follow logical structure. The code uses comments effectively and is interspersed with Jupyter Notebook Markdown cells. The steps of the data wrangling process (i.e. gather, assess, and clean) are clearly identified with comments or Markdown cells, as well.
Gathering Data

The student is able to gather data from a variety of sources and file formats. Data is successfully gathered: -- From at least the three (3) different sources on the Project Details page. -- In at least the three (3) different file formats on the Project Details page. -- Each piece of data is imported into a separate pandas DataFrame at first.
Assessing Data

The student is able to assess data visually and programmatically for quality and tidiness. Two types of assessment are used:
Visual assessment: each piece of gathered data is displayed in the Jupyter Notebook for visual assessment purposes. Once displayed, data can additionally be assessed in an external application (e.g. Excel, text editor).
Programmatic assessment: pandas' functions and/or methods are used to assess the data.
The student is able to thoroughly assess a dataset. At least eight (8) data quality issues and two (2) tidiness issues are detected, and include the issues to clean to satisfy the Project Motivation. Each issue is documented in one to a few sentences each.
Cleaning Data

The student uses the steps in the data cleaning process to guide their cleaning efforts. The define, code, and test steps of the cleaning process are clearly documented.
The student is able to thoroughly clean a dataset programmatically. Copies of the original pieces of data are made prior to cleaning. All issues identified in the assess phase are successfully cleaned (if possible) using Python and pandas, and include the cleaning tasks required to satisfy the Project Motivation. A tidy master dataset (or datasets, if appropriate) with all pieces of gathered data is created.
Storing and Acting on Wrangled Data

The student is able to store a gathered, assessed, and cleaned dataset. Students will save their gathered, assessed, and cleaned master dataset(s) to a CSV file or a SQLite database.
The student is able to act on their wrangled data to produce insights (e.g. analyses, visualizations, and/or models). The master dataset is analyzed using pandas or SQL in the Jupyter Notebook and at least three (3) separate insights are produced. At least one (1) labeled visualization is produced in the Jupyter Notebook using Python’s plotting libraries or in Tableau. Students must make it clear in their wrangling work that they assessed and cleaned (if necessary) the data upon which the analyses and visualizations are based.
Report

The student is able to reflect upon and describe their data wrangling efforts. The student’s wrangling efforts are briefly described. This document (wrangle_report.pdf or wrangle_report.html) is concise and approximately 300-600 words in length.
The student is able to describe some insights found in their wrangled dataset. The three (3) or more insights the student found are communicated. At least one (1) visualization is included. This document (act_report.pdf or act_report.html) is at least 250 words in length.
Project Files

Are all required files included in the student's submission?
The following files (with identical filenames) are included:
wrangle_act.ipynb
wrangle_report.pdf or wrangle_report.html
act_report.pdf or act_report.html
All dataset files are included, including the stored master dataset(s), with filenames and extensions as specified on the Project Submission page.
1.3 What Resources are Available? 
UDACITY Rubric for guidance on project submission
Dataset supplied and gathered (Details in Section Data Description )
Twitter API on Twitter’s Developer Portal
Jupyter Python Notebook
1.4 What Questions Are We Trying To Answer? 
Q1. How have the success of genres changed over time (Revenue/Rating)?
2. Data Wrangling and Understanding 
The second stage of the process is where we acquire the data listed in the project resources. Describe the methods used to acquire them and any problems encountered. We record problems you encountered and any resolutions achieved. Tis includes any data quality issues, and any resolution steps taken. This initial collection includes extraction details and source details, and subsequently loaded into Python and analysed in Jupyter notebook.

2.1 Data Description 
Enhanced Twitter Archive
The WeRateDogs Twitter archive contains basic tweet data for all 5000+ of their tweets, but not everything. One column the archive does contain though: each tweet's text, which I used to extract rating, dog name, and dog "stage" (i.e. doggo, floofer, pupper, and puppo) to make this Twitter archive "enhanced."

Additional Data via the Twitter API
Back to the basic-ness of Twitter archives: retweet count and favorite count are two of the notable column omissions. Fortunately, this additional data can be gathered by anyone from Twitter's API. Well, "anyone" who has access to data for the 3000 most recent tweets, at least. But we, because we have the WeRateDogs Twitter archive and specifically the tweet IDs within it, can gather this data for all 5000+. And guess what? We're going to query Twitter's API to gather this valuable data.

Image Predictions File
The tweet image predictions, i.e., what breed of dog (or other object, animal, etc.) is present in each tweet according to a neural network. This file (image_predictions.tsv) hosted on Udacity's servers and we downloaded it programmatically using python Requests library on the following (URL of the file: https://d17h27t6h515a5.cloudfront.net/topher/2017/August/599fd2ad_image-predictions/image-predictions.tsv)

2.2 Data Gathering 
Enhanced Twitter Archive
We manually downloaded this file manually by clicking the following link: twitter_archive_enhanced.csv

Additional Data via the Twitter API
In this project, we'll be using Tweepy to query Twitter's API for additional data beyond the data included in the WeRateDogs Twitter archive. This additional data will include retweet count and favorite count.

Some APIs are completely open, like MediaWiki (accessed via the wptools library). Others require authentication. The Twitter API is one that requires users to be authorized to use it. This means that before you can run your API querying code, we need to set up your own Twitter application. Here are the steps to do that on the Twitter site:

First, you need to sign up for a Twitter account.
Next, to set up a developer account, follow the directions on Twitter’s Developer Portal, in the “How to Apply” section.
You will be guided through the steps, and asked to describe in your own words what you are building
Once you submit your application, you should soon receive an email from Twitter letting you know they have approved your new Twitter developer account. Follow the link in the email from Twitter to a page of directions to get started creating your app.
If you are asked for an app name, it can be anything appropriate, and if you’re asked for a Website URL, it can be anything in a standard URL format. You can do the same with other requested URLs, or perhaps leave them blank.
If you’re asked to explain how your app will be used, you could say something like "I'm creating this for a student Data Wrangling project with Udacity, where we need to query and analyze Twitter data from WeRateDogs."
You should then be given a Success message, and a new developer page displayed to you where you can manage your app.
You can then go to the Keys and Tokens tab on this page to find or generate the Consumer API keys, and the Access Token and Access Token Secret that you will need.
Image Predictions File
This file (image_predictions.tsv) hosted on Udacity's servers and we downloaded it programmatically using python Requests library on the following (URL of the file: https://d17h27t6h515a5.cloudfront.net/topher/2017/August/599fd2ad_image-predictions/image-predictions.tsv)