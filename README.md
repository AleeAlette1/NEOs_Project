# NEOs Project
UC Berkeley Data Analytics Bootcamp Final Project

<a href= "https://docs.google.com/presentation/d/1BQlw8KsA-17b0CTgA-Jki0ccUJvn-29yCgjgTW-MsKI/edit?usp=sharing*" target="_blank"> NEOs Google Slide</a> 

## Group Members:
|       Member       |      Role      |                   Responsibilities                  |
|--------------------|----------------|-----------------------------------------------------|
|Jacqueline Tsodikova|   Technology   |     Will decide which technologies will be used     |
|  Alejandra Magana  |     Github     |          Responsible for Github repository          |
|   Michael Albers   |    Database    |Create mockup of a database with a set of sample data|
|    Robert Janke    |Machine Learning|      Manage the Machine Learning Model & Design     |
|     Fred Jambor    |Machine Learning|      Manage the Machine Learning Model & Design     |

## Introduction 

Near-Earth Objects (NEOs) are comets and asteroids that have been nudged by the gravitational attraction of nearby planets into orbits that allow them to enter the Earth’s neighborhood. Composed mostly of water ice with embedded dust particles, comets originally formed in the cold outer planetary system while most of the rocky asteroids formed in the warmer inner solar system between the orbits of Mars and Jupiter. The scientific interest in comets and asteroids is due largely to their status as the relatively unchanged remnant debris from the solar system formation process some 4.6 billion years ago. The giant outer planets (Jupiter, Saturn, Uranus, and Neptune) formed from an agglomeration of billions of comets and the left over bits and pieces from this formation process are the comets we see today. Likewise, today’s asteroids are the bits and pieces left over from the initial agglomeration of the inner planets that include Mercury, Venus, Earth, and Mars.

As the primitive, leftover building blocks of the solar system formation process, comets and asteroids offer clues to the chemical mixture from which the planets formed some 4.6 billion years ago. If we wish to know the composition of the primordial mixture from which the planets formed, then we must determine the chemical constituents of the leftover debris from this formation process - the comets and asteroids.

## Why this topic?

Our group chose this topic because we wanted to build a binary classifier model which can predict future NEOs as either potentially hazardous to Earth or not. A new movie on Netflix, *Don't Look Up*, was just released that had to do with a comet approaching Earth and scientists trying to warn the public about it. Although this movie is more about comedic humor, a comet or asteroid harming our planet is definitely something that could happen. So, we wanted to research and analyze the data to see how likely a NEO could harm us. 

## Questions We Would Like to Answer:

1. How many close approach objects will we have in the next decade?
2. Can we predict potentially hazardous objects in the future?
3. Which NEOs are the most potentially hazardous?

## Outline of the Project:
- Used PostgreSQL to store our data and created five main tables to build and perform the machine learning model using the primary designation as the main key. 
- Crated our ETL process for extracting NEOs and Close Approaches, which included transforming and loading the data into an AWS RDS database. 
- Prepared our dataset by cleaning up and dropping any columns that were not significant to our project.
- Conducted Random-Over-Sampler, SMOTE, Random Forest, Over and Under Sampling and SMOTEENN tests to populate NEOS that are potentially hazardous to Earth as accurate as possible.
- Created Google Slides and Tablaeu dashboard to provide a visually appealing and interactive presentation to our audience. 

## Technologies Used

Which tools are the best fit for your project? 

We have chosen the following: 
- PostgreSQL to store large and sophisticated data safely
- PySpark to have a wide range of libraries and use it for Machine Learning Analysis. It provides simple and comprehensive API.
- CSV files to read data and then to import into a spreadsheet or another storage database
- Tableau to create a dashboard and story for presenting our analysis 
- Entity Relationship Diagram (ERD) to model the data stored in our database
- Random Forest Classifier to test our Machine Learning
- Pandas for cleaning the data 
- A public AWS RDS database to store our data

### Dashboard
We will be using Tablaeu to create our final dashboard because it is visually appealing and it is interactive for the viewers. We will be creating a story within Tablaeu so that the users can click through different section titles to see an array of data. Some data we are planning to show are maps of the different points in the world an asteroid could hit, the probability of an asteroid hitting us using different graphs, a scatterplot of the asteroids that are the biggest threat, and much more.

We will also incorporate a list of things to do in case one is approaching and a list of things to store in your house in case of an emergency as an interactive element

<img width="558" alt="Screen Shot 2022-01-13 at 8 09 09 PM" src="https://user-images.githubusercontent.com/88408350/149450049-5c209ab7-2e21-45bc-9b47-aeeeb17379d3.png">

On top of working in Tableau, we have been working on our presentation in Google Slides. Here we will visually and orally explain our project. We will address the following: 
- Selected topic
- Reason topic was selected
- Description of the source of data
- Questions the team hopes to answer with the data
- Description of the data exploration phase of the project
- Description of the analysis phase of the project

### Database 

For our database, we have used pgAdmin within PostgreSQL to see the connections between the different datasets. The varaible we are looking for is PDES (primary designation for numbered asteroids). For our dashboard, we will be using Tableau to create a story of our data. 

### Machine Learning 
SciKitLearn is the ML library we'll be using to create a classifier. We used the following:  
- Random Forest Classifier because it provides higher accuracy through cross validation. Random forest classifier will handle the missing values and maintain the accuracy of a large proportion of data. Our data sets are 92% accurate. 
- RandomOverSampler involves randomly duplicating examples from the minority class and adding them to the training dataset. This technique can be effective for those machine learning algorithms that are affected by a skewed distribution and where multiple duplicate examples for a given class can influence the fit of the model
- SMOTE(synthetic minority oversampling technique) is one of the most commonly used oversampling methods to solve the imbalance problem. It aims to balance class distribution by randomly increasing minority class examples by replicating them

## Descriptions of our Data
For our data and machine learning, we had one person working on our database and two people working on different sets of machine learning. For the database, we used ERD and Postgres to store and analyze our data. For the machine learning, both people analyzed NEOs that were potentially hazardous to Earth, but they used different methods. The first person used the Random Forest Classifier, which had 92% accuracy, and over/under sampling to test the accuracy of the data set. The second person used RandomOverSampler and SMOTE and found that these model fail to have an accurate prediction of hazardous object. It is always good to test different models on our machine learning to see if any data is skewed or give more accurate results.

## Machine Learning
### Pre-Processing of the Dataset:
For the first segment of our project, we randomly selected a csv file with 28052 rows and 36 columns. We initially dropped string columns containing names and IDs for these objects ("full_name and "orbit_ID" columns). Then we went ahead and dropped ['equinox', 'PC'] columns "epoch.cal column includes epoch of osculation in calendar for each row. In astronomy, an epoch or reference epoch is a moment in time used as a reference point for some time-varying astronomical quantity. We decided to drop this column momentarily since it has no impact on our analysis. We then proceeded with eliminating the columns that had null values more than 50 percent of the total number of rows and then replaced the other null values with zero. The Potentially Hazardous Asteroids (PHA) column had string values of yes and no, which indicates whether it is a hazardous object.

![image](https://user-images.githubusercontent.com/86033316/148664174-a9fb267e-e49d-4119-b8b2-85a2dba7c3f3.png)

### Performing Resampling Supervised Machine Learning
For this segment of the project, we used Random-Over-Sampler and SMOTE python libraries for our machine learning classification models. The target variable is column "PHA" which stands for Potentially Hazardous Asteroids. A value check on our target variable showed   25,839 0s and 2,213 1s which indicates the imbalance between the number of hazardous vs non-hazardous objects.
![image](https://user-images.githubusercontent.com/86033316/148664425-07ec7424-5fa6-41a0-a5dd-f9bef9297cfb.png)

Below is the list of feature variables "X" for our model

![image](https://user-images.githubusercontent.com/86033316/148664555-0c185cc1-70a9-41dc-a5b5-80644fe062b5.png)

Both Random-Over-Sampler and SMOTE models generated roughly 69% accuracy in their prediction.
SMOTE resulted in a precision of 95% for "0" and 23% for "1", meaning our model is able to predict the non hazardous objects for 95% of the time and is only able to predict the hazardous objects 23% of the time. 
Since our model fails to have an accurate prediction of hazardous object, we will look for further improvements in our data set and also trying different machine learning techniques

![image](https://user-images.githubusercontent.com/86033316/148664583-f2180c21-fcf3-411c-814e-c2bf3417cdf6.png)

### Cleaning up Data: 
- Dropped all NAN for the Potentially Hazardous Asteroids and converted Y/N to 1 or 0. 
- Created 3 different datasets to run through a random forest. Noticed that set 1 had a lot of NANs in regards to size of asteroid, so we will not use that set in ML model.

### Random Forest for 2 of the Data Sets
As stated, only used DS2 and DS3 as DS1 which had too many NAN values. Both datasets showed to be good models with the Random Forest Classifier, with around 92% accuracy. However, we noticed in DS2 that the precision for an impact was low, indicating that we are getting a lot of false negatives. This is concerning if we are looking for impacts because we might miss them. A big problem could be that we have many more negative PHA outcomes than positive. Hence, I will try oversampling or undersampling to see if that helps.

### Over and Under Sampling for DS2
Over and under sampling worked better because they identified more true positives. It is a bit concerning that there are still many false negatives, almost 40% of actual impacts were classified wrong in the oversampling (228 predicted wrong, 325 predicted correctly) and similar results for the undersampling. The main change here is a drop in accuracy in that we have more false positives - predicted impacts that are not actual impacts.

### One Last Test with SMOTEENN
This method seemed to work much better. However, accuracy is still not great, mostly due to false positives, which is better than a false negative when dealing with asteroid impacts. We still have a high rate of false negatives, with our recall at 0.75, or about 25% of the actual impacts are predicted to be misses. Need to see if we can clean that up in a future model.

## Database

[Here is the link to our NEO Data Points](https://github.com/AleeAlette1/NEOs_Project/blob/main/Database/Data_Points_Glossery/CloseApproachesREADME.md)

[Here is the link to our Close Approaches Data Points](https://github.com/AleeAlette1/NEOs_Project/blob/main/Database/Data_Points_Glossery/DataPointREADME.md)

[Here is the link to our SQL Scripts](https://github.com/AleeAlette1/NEOs_Project/tree/main/Database/sql)

### Entity Relationship Diagram (ERD)
For our database, since we had over 28,000 rows, we decided to use PostgreSQL because it stores large and sophisticated data safely and we could visually see the relationships between our data. The image below represents the tables of data that we uploaded onto the database. We used five main tables with the data to build and perform the machine learning model with the primary designation being the most common connection between all of our datasets:

![](Database/Resources/images/neo_erd_diagram.png)

### Database Tables

| Table Name    | Source Data                                                                                        |
|---------------|----------------------------------------------------------------------------------------------------|
| Neo           | CSV file downloaded from NASA website                                                              |
| Cad           | API call to NASA website to pull current and future close approaches data up to year 2100          |
| Cad_history   | API call to NASA website to pull historical close approaches data dating back to year 1900         |
| mlcsv_future  | Join query from most recent close approach in CAD table with Neo table. See **join_query_future.sql**  |
| mlcsv_history | Join query from most recent close approach in CAD history table with Neo table. See **join_query.sql** |

                                                              
### ETL Process
A detailed description of the process of extracting Near Earth Objects and Close Approaches data, transformation and loading into an AWS RDS database. 

[Here is a link to a Detailed ETL Process](https://github.com/AleeAlette1/NEOs_Project/blob/main/Database/README/Detail_ETL_Process.md)


#### Data Sources
<a href="https://ssd-api.jpl.nasa.gov/doc/sbdb_query.html" target="_blank">Small Object Database Query (NASA)</a>

<a href="https://ssd-api.jpl.nasa.gov/doc/cad.html" target="_blank">SBDB Close Approach Data API (NASA)</a>

<a href= "https://cneos.jpl.nasa.gov/about/basics.html" target="_blank"> NEOs Basics (NASA)</a>

## Analysis Results




















