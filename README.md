# NEOs_Project
## Summary
  In this project, we referred to (https://cneos.jpl.nasa.gov/orbits/intro.html) "Center For Near Earth Object Studies" AKA CENOS which is NASA's center for computing highly accurate orbital data for thousands of asteroids and Comets that fly in our solar system. CNEOS collects it's information from minor planet center which includes orbital data and physical properties like size and rotation rates. Our goal is to analyze NASA's database for all asteroids and comets and use Machine Learning to predict potential hazardous objects coming towards our planet earth. Our biggest question is "Is there gonna be a space object that has the potential to hit our planet?".
  For the first segment of this project, I was tasked with Triangle role which takes part in preparation of a mock-up Machine Learning Model. I visited Small Body Data Base Quer (https://ssd.jpl.nasa.gov/tools/sbdb_query.html) and downloaded a mock-up csv file for my analysis.
  
## Pre-processing of the data set
For the first segment of our project, I randomly selected a csv file with 28052 rows and 36 columns.  I initially dropped string columns containing names and IDs for these objects ("full_name and "orbit_ID" columns). Then I went ahead and dropped ['equinox', 'PC'] columns since they only contained a single value.
![image](https://user-images.githubusercontent.com/86033316/148664174-a9fb267e-e49d-4119-b8b2-85a2dba7c3f3.png)
"epoch.cal column includes epoch of osculation in calendar for each row. In astronomy, an epoch or reference epoch is a moment in time used as a reference point for some time-varying astronomical quantity. I decided to drop this column momentarily since it has no impact on my analysis. 
I then proceeded with elliminating the columns that had null values more than 50 percent of the total number of rows and then replaced the other null values with zero. 
'pha' (Ptentially Hazardous Asteroids) column had string values of yes and no. Yes indicates a hazardous object.

## Performing Resampling Supervised machine learning
For this segment of the project, I used RandomOverSampler and SMOTE python libraries for my machine learning classification models. The target variable is column "pha" which is Ptentially Hazardous Asteroids. A value check on my target variable showed   25,839 0s and 2,213 1s which indicates the imbalance between the number of hazardous vs non-hazardous objects.
![image](https://user-images.githubusercontent.com/86033316/148664425-07ec7424-5fa6-41a0-a5dd-f9bef9297cfb.png)


