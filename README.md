# NEOs Project
UC Berkeley Data Analytics Bootcamp Final Project

#### Introduction 

Near-Earth Objects (NEOs) are comets and asteroids that have been nudged by the gravitational attraction of nearby planets into orbits that allow them to enter the Earth’s neighborhood. Composed mostly of water ice with embedded dust particles, comets originally formed in the cold outer planetary system while most of the rocky asteroids formed in the warmer inner solar system between the orbits of Mars and Jupiter. The scientific interest in comets and asteroids is due largely to their status as the relatively unchanged remnant debris from the solar system formation process some 4.6 billion years ago. The giant outer planets (Jupiter, Saturn, Uranus, and Neptune) formed from an agglomeration of billions of comets and the left over bits and pieces from this formation process are the comets we see today. Likewise, today’s asteroids are the bits and pieces left over from the initial agglomeration of the inner planets that include Mercury, Venus, Earth, and Mars.

As the primitive, leftover building blocks of the solar system formation process, comets and asteroids offer clues to the chemical mixture from which the planets formed some 4.6 billion years ago. If we wish to know the composition of the primordial mixture from which the planets formed, then we must determine the chemical constituents of the leftover debris from this formation process - the comets and asteroids.

#### Why this topic?

Our group chose this topic because we wanted to build a binary classifier model which can predict future NEOs as either potentially hazardous to Earth or not. A new movie on Netflix, *Don't Look Up*, was just released that had to do with a comet approaching Earth and scientists trying to warn the public about it. Although this movie is more about the satire of different characters, a comet or asteroid harming our planet is definitely something that could happen. So, we wanted to research and analyze the data to see how likely a NEO could harm us. 

#### Questions We Would Like to Answer:

1. Is there gonna be a space object that has the potential to hit our planet?
2. What is the probability that these objects will be hazardous?
3. Where is the primary designation for the asteroids?

#### Group Members:
|       Member       |      Role      |                   Responsibilities                  |
|--------------------|----------------|-----------------------------------------------------|
|Jacqueline Tsodikova|   Technology   |     Will decide which technologies will be used     |
|  Alejandra Magana  |     Github     |          Responsible for Github repository          |
|   Michael Albers   |    Database    |Create mockup of a database with a set of sample data|
|    Robert Janke    |Machine Learning|      Manage the Machine Learning Model & Design     |
|     Fred Jambor    |Machine Learning|      Manage the Machine Learning Model & Design     |

#### Communication Protocols
Our group communicated via zoom 3 different times this week and we all agreed on our roles and the deadline each person had to meet. Because our group is from all over the country, we found it easier to answer any questions or give updates using our Slack group channel. Everyone was able to do their work on time, so our communication protocols are working for our group.

#### Locations of Project Deliverables:
|           Objective          |    Location   |
|------------------------------|---------------|
|         Presentation         |       *       |
|         Analysis Code        |       *       |
|Machine Learning code & output|       *       |

#### Descriptions of our Data

For our data source and machine learning, we had one person working on our database and two people working on different sets of machine learning. For the database, we used ERD and Postgres to store and anlyze our data. For the machine learning, both people analyzed NEOs that were potentially hazardous to Earth, but they used different methods. The first person used the Random Forest Classifier, which had 92% accuracy, and over/under sampling to test the accuracy of the data set. The second person used RandomOverSampler and SMOTE and found that these model fail to have an accurate prediction of hazardous object. It is always good to test different models on our machine learning to see if any data is skewed or give more accurate results.

## Database

#### Entity Relationship Diagram (ERD)
For our database, since we had over 28,000 rows, we decided to use PostgreSQL because it stores large and sophisticated data safely and we could visually see the relationships between our data. The image below represents the tables of data that we uploaded onto the database. We used three main tables with the data to build and perform the machine learning model with the primary designation being the most common connect between all of our datasets:

![](Database/resources/images/neo_erd.png)

#### ETL Process
![](Database/resources/images/Neo_Etl_Process-1.png)

##### Data Sources
<a href="https://ssd-api.jpl.nasa.gov/doc/sbdb_query.html" target="_blank">Small Object Database Query (NASA)</a>

<a href="https://ssd-api.jpl.nasa.gov/doc/cad.html" target="_blank">SBDB Close Approach Data API (NASA)</a>

<a href= "https://cneos.jpl.nasa.gov/about/basics.html" target="_blank"> NEOs Basics (NASA)</a>

## Machine Learning
#### Pre-Processing of the Dataset:
For the first segment of our project, we randomly selected a csv file with 28052 rows and 36 columns. We initially dropped string columns containing names and IDs for these objects ("full_name and "orbit_ID" columns). Then I went ahead and dropped ['equinox', 'PC'] columns 
![image](https://user-images.githubusercontent.com/86033316/148664174-a9fb267e-e49d-4119-b8b2-85a2dba7c3f3.png)
"epoch.cal column includes epoch of osculation in calendar for each row. In astronomy, an epoch or reference epoch is a moment in time used as a reference point for some time-varying astronomical quantity. I decided to drop this column momentarily since it has no impact on our analysis. 
We then proceeded with eliminating the columns that had null values more than 50 percent of the total number of rows and then replaced the other null values with zero. 
'pha' (Ptentially Hazardous Asteroids) column had string values of yes and no. Yes indicates a hazardous object.

#### Performing Resampling Supervised Machine Learning
For this segment of the project, we used Random-Over-Sampler and SMOTE python libraries for pur machine learning classification models. The target variable is column "PHA" which stands for Potentially Hazardous Asteroids. A value check on our target variable showed   25,839 0s and 2,213 1s which indicates the imbalance between the number of hazardous vs non-hazardous objects.
![image](https://user-images.githubusercontent.com/86033316/148664425-07ec7424-5fa6-41a0-a5dd-f9bef9297cfb.png)

below is the list of feature variables "X" for our model

![image](https://user-images.githubusercontent.com/86033316/148664555-0c185cc1-70a9-41dc-a5b5-80644fe062b5.png)

Both Random-Over-Sampler and SMOTE models generated roughly 69% accuracy in their prediction.
SMOTE resulted in a precision of 95% for "0" and 23% for "1", meaning our model is able to predict the non hazardous objects for 95% of the time and is only able to predict the hazardous objects 23% of the time. 
Since our model fails to have an accurate prediction of hazardous object, we will look for further improvements in our data set and also trying different machine learning techniques

![image](https://user-images.githubusercontent.com/86033316/148664583-f2180c21-fcf3-411c-814e-c2bf3417cdf6.png)

#### Cleaning up Data: 
Dropped all NAN for the PHA (potentially hazardous asteroid) and converted Y/N to 1 or 0. 
Created 3 different datasets to run through a random forest. Noticed that set 1 had a lot of NAN in regards to size of asteroid, will not use that set in ML model.

#### Random Forest for 2 of the Data Sets
As stated, only used DS2 and DS3 as DS1 had too many NAN values. Both datasets showed to be good models with the random forest, with around 92% accuracy. One thing we noticed in DS2 though, is that the precision for an impact was low, indicating that we are getting a lot of false negatives. Concerning if we are looking for impacts and missing them. Main problem could be that we have many more negative PHA outcomes than positive. Will try over or undersampling to see if that helps.

#### Over and Under Sampling for DS2
These 2 methods worked better, in that they identified more true positives. It is a bit concerning that there are still many false negatives, almost 40% of actual impacts were classified wrong in the oversampling (228 predicted wrong, 325 predicted correctly) and similar results for the undersampling. The main change here is a drop in accuracy in that we have more false positives, ie predicted impacts that are not actual impacts.

#### One Last Test with SMOTEENN
This seemed to work a lot better. Accuracy is still not great, but that is more because of the false positives, which is better than a false negative when dealing with asteroid impacts. We still have a high rate of false negatives, with our recall at 0.75, or about 25% of the actual impacts are predicted to be misses. Need to see if we can clean that up in a future model.


## Dashboard

## Analysis Results




















