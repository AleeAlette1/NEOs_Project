![](https://github.com/AleeAlette1/NEOs_Project/blob/main/Database/Resources/images/ETL_Process_Detail.png)

### Close Approaches Data
The close approaches data consists of a historical dataset of asteroid close appraoches to Earth which includes distance and velocity attributes. 

<ins>**Historical Close Approaches**</ins><br/>
The historical close approach data is accessed via an API call to the NASA/JPL web site which returns the data in JSON format. The JSON file is transformed into a pySpark DataFrame on via Google Colab. The transformed data in tabular format is then loaded into the Neo database residing in AWS RDS instance.

https://ssd-api.jpl.nasa.gov/cad.api?date-min=1900-01-01&date-max=2021-12-31&dist-max=0.2'

<ins>**Future Close Approaches**</ins><br/>
The close approaches of asteroids is accessed from a second API call to the NASA/JPL site. The data is returned in JSON format which is transformed in a pySpark DataFrame on Google Colab and then loaded into the Neo database on AWS RDS instance.

https://ssd-api.jpl.nasa.gov/cad.api?date-min=2022-01-01&date-max=2100-01-01&dist-max=0.2

### Near-Earth Obects (NEO)
The asteroids classified as Near-Earth objects were downloaded manually from the NASA/JPL web site as a CSV file. This dataset is transformed via pySpark on Google Colab and loaded into the AWS RDS Neo database.

​
​
​
| Notebook                 | Description         |
|--------------------------|---------------------|
| Spark_DataFrame_Neo_CSV  | Extract, Transform and Load Neo CSV file into AWS Neo database  |
| Spark_DataFrame_Neo_Json | Extract, Transform, and Load Close Approach Json data into AWS Neo database|
​