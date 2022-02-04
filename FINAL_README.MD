## Final Project Assesment Deliverable

### Self-Assessment
My main focus throughout the duration of the project was devoliping a machine learning model to be used for prediction of hazardous asteroid in the future.
Even though my main focus was ML, me and my other team members were constantly discussing how each of our role is connected to their portion of the project. For example, the output of Database effort was the input of machine learning and I was sharing with
other database members how they can tailor the database in a manner that can be beneficial for the machine learning.
Even though I did not participate in managing github branches and merges, me and my other ML team member were having our inputs to github manager for final compilation of readme section for machine learning to make sure
readme is inclusive of both of our findings.
My greatest personal challenge for this project was understanding the meaning and functionality of all asteronomical features we had in our database. It was very crucial for my role to learn the meaning behind the features
to make the final determination of final feature variables. I was able to tackle this task by reading through multiple segments of Nasa's website and also I read multiple articles and papers.

### Team-Assesment
Our communication revolved around group discussion during weekly class meetings and sharing ideas in Slack group channel. We occasionaly had virtual zoom calls to share our challenges and brainstorm on best ways to approach project-related challenges.
One key accomplishment of our strong coomunication was effective project planning with least amount of time and having all team member's buy in on key decision-making processes throughout the project.
One lesson we learnt during our final project, and we will do differently in future projects is developing clear expectations from each person's role. Defining deliverables by a certain deadline for each team/member will help the whole team be onboard with all
the expectations.
Our group's biggest strength was team work and communication in an effective manner. For instance, in one of the final stages of machine learning, In order to come up with ideas to develop a notebook to make predictions on future data, I asked another team member who 
was working on database section of the project, to take on pre-processing of future data and making the connections to AWS in a jupyter notebook. His contribution help me spend more time and work on improving my understanding of feature variables and improved the performance of
ML Model. Going above and beyond our roles was a key factor for success of the project.

### Summary of the project

The main goal of this project is to eplore the possibility of developing a machine learning module that can potentially analyze large Nasa's data sets regarding NEOs to make predictions on possibility of an asteroid hitting our planet earth in the near future (100 years from now). To further clarify, Near-Earth Objects (NEOs) are comets and asteroids that have been nudged by the gravitational attraction of nearby planets into orbits that allow them to enter the Earth’s neighborhood. It has been a historical fear for all humankinds to imagine their future is doomed by a comet or asteroid hitting the planet earth. 
From my point of view, the heart of our project was the ETL process for extracting NEOs and Close Approaches, which included transforming and loading the data into an AWS RDS database. NEOs data was extracted as a csv file from Nasa's small object data base query with the link below, and all close approach data (CAD) was extracted as json from Nasa's API.
https://ssd-api.jpl.nasa.gov/doc/sbdb_query.html
For machine learning, we explored several supervised machine learning models like SMOTE, RandomOverSampler, RandomForest, and so forth. Out of all ML models, Neural networks using Tensorflow had the highest accuracy score and lowest loss. We trained our data with a merged DataFrame of our cleaned CAD and NEOS table and performed multiple pre-processing techniques to ommit string columns, null values, and unnessacary variables which resulted in a narrowed down list of 5 feature variables. The target for our final binary classifier neural network model was PHA column which identifies if an asteroid is a potential hazard for earth or not. After training the model, we created a seperate notebook to prepare future data base. We inserted the feature variables to our trained model and made prediction. Finally evaluated our model with Nasa's original PHA and created a Confusion Matrix which showed a precision of roughly %23 percent for identification of hazardous asteroids. Eventhough we concluded our model fails to make acceptable predictions compared to Nasa's future prediction, we learn a lot from this process and made these lesson learned a foundation for our future projects.


