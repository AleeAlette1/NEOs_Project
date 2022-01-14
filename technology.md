# NEOs_Project

# Technologies Used

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

## Database 

For our databse, we have used pgAdmin within PostgreSQL to see the connections between the different datasets. The varaible we are looking for is PDES (primary designation for numbered asteroids). 

<img width="561" alt="Screen Shot 2022-01-09 at 1 49 08 PM" src="https://user-images.githubusercontent.com/88408350/148702357-c0562c58-0769-4a1b-a0f5-c3cc098a2088.png">

## Machine Learning 

SciKitLearn is the ML library we'll be using to create a classifier. We used the following:  
- Random Forest Classifier because it provides higher accuracy through cross validation. Random forest classifier will handle the missing values and maintain the accuracy of a large proportion of data. Our data sets are 92% accurate. 
- RandomOverSampler involves randomly duplicating examples from the minority class and adding them to the training dataset. This technique can be effective for those machine learning algorithms that are affected by a skewed distribution and where multiple duplicate examples for a given class can influence the fit of the model
- SMOTE(synthetic minority oversampling technique) is one of the most commonly used oversampling methods to solve the imbalance problem. It aims to balance class distribution by randomly increasing minority class examples by replicating them

## Dashboard 

Here is a link to our dashboard: 

<img width="436" alt="Screen Shot 2022-01-09 at 1 48 17 PM" src="https://user-images.githubusercontent.com/88408350/148702326-6df5f31d-cc24-4d8f-ab0c-db3b8c2db952.png">

We will be using Tablaeu to create our final dashboard because it is visually appealing and it is interactive for the viewers. We will be creating a story within Tablaeu so that the users can click through different section titles to see an array of data. Some data we are planning to show are maps of the different points in the world an asteroid could hit, the probability of an asteroid hitting us, a plot graph of the asteroids that are the biggest, etc.

We were also thinking to incorporate a list of things to do in case one is approaching and a list of things to store in case of an emergency.

On top of Tableau, we have been working on our presentation in Google Slides. Here we will visually and orally explain our project. We will address the following: 
- Selected topic
- Reason topic was selected
- Description of the source of data
- Questions the team hopes to answer with the data
- Description of the data exploration phase of the project
- Description of the analysis phase of the project
