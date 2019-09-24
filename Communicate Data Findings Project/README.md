# <center> UDACITY Data Analysis Nanodegree </center> 
## <center> Project:- Visualizing FordGoBike Data</center>
#### Grant Patience, 16th September 2019

## Project Details
Dataset: Ford GoBike
Bay Wheels is a regional public bicycle sharing system in the San Francisco Bay Area, California operated by Motivate 
(a company based in New York City that operates bicycle sharing systems in the United States), in a partnership with the 
Metropolitan Transportation Commission and the Bay Area Air Quality Management District.

The data consists of information regarding over 3 million bike rides from January 2018 to July 2019. Including start details, end details and anonymised user details.
The data was procured via Udacity from this [location](https://www.lyft.com/bikes/bay-wheels/system-data)

## Files
- Readme.md - This Markdown file contains sections that describe the dataset, exploration, and explanatory analysis.
- CommunicateData.ipynb - The extraction, wrangling and exploratory code, visuals and findings
- CommunicateData.html - As above, in HTML format per submission requirement
- Communicate_Data_Slide_Deck.ipynb - The explanatory findings jupyter notebook and findings in order convey a story to an audience
- Communicate_Data_Slide_Deck.html - As above, the slide deck in HTML format per submission requirement


## Investigation Overview

In this data analyis of the Ford GoBike data, we wanted to investigate common customer behaviours and demographics of users, 
such as peak usage times, and the effect of different behavioural patterns affect usage such as user type, gender, and age in order to find out more about the types of user and their purpose for using the system. 


## Summary of Findings

In the exploration, we found that there was a strong pattern of usage during peak days, times and seasonality - commute times of 8-9am and 5-6 pm, mid-week 
were by far the most common. This would indicate that rentals werepredominantly used by commuters. 

When splitting this data by user type, we could found there were two types of user - subscriber who appeared to more commonly use rentals in commute times, 
while the customer user type had a more even spread of usage times throughout the week, and more commonly on weeks indicatiy they were more leisurely ad-hoc users or perhaps tourists.

To investigate user demographics further, surprisingly we found that both user types the gender type was predominantly male over female. 

Also of interest to note was that by binning ages of users, we found that the vast majority of users fell within the 26-35 and 36 - 45 age ranges. 
To further dig into the types of rides users carried out, we found short durations and distances were common amongst subscribers and customer user types.

Finally, to further analyse the type of users using the bike system we used our age bins, to find if there were more common times of usage over each hourl and day of the week. 
Doing this we found that the peak usage times of 8=9am and 5-6pm were driven mostly by the 26-35 and 36 - 45 age ranges which would coincide with this age range having the greater instance of working age individuals.


## Key Insights for Presentation

For the presentation, I focus on the key usage times. I start by introducing the
month variable, followed by the time distribution distribution.

We then start to explore the type of users utilising the bike rental system using by splitting the data by gender, age bin, and user type. 

Afterwards, we start to explore usage times of these demographics - by user type, as well as the distances travelled by these user types in violin and box plots.

We then look into distances travelled again by age bin in a FacetGrid Ridgeline plot. 

Finally, we explore usage time against our age bins to determine by age group, peak time and days within a multi-layered Heat chart.

I used consistent colour pallette throughout the visuals, but ensured that the different keys were distringuishable enough on each chart.

## Resources
- Exporting to a CSV [StackOverflow](https://stackoverflow.com/questions/22872952/set-file-path-for-to-csv-in-pandas)
- Calculating Distance using the [Haversine formula](https://www.movable-type.co.uk/scripts/latlong.html) and referencing [StackOverflow](https://stackoverflow.com/questions/4913349/haversine-formula-in-python-bearing-and-distance-between-two-gps-points)
- Use [strftime](https://www.programiz.com/python-programming/datetime/strftime) to get date parts
- Sorting a dataframe by Weekday from [StackOverflow](https://stackoverflow.com/questions/47741400/pandas-dataframe-group-and-sort-by-weekday)
- Remove a legend from [StackOverflow](https://stackoverflow.com/questions/5735208/remove-the-legend-on-a-matplotlib-figure)
- Seaborn colour pallettes on [Seaborn](https://seaborn.pydata.org/tutorial/color_palettes.html)

## Feedback
No feedback was gained