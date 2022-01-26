## Database Tables

| Table Name    | Source Data                                                                                        |
|---------------|----------------------------------------------------------------------------------------------------|
| Neo           | CSV file downloaded from NASA website                                                              |
| Cad           | API call to NASA website to pull current and future close approaches data up to year 2100          |
| Cad_history   | API call to NASA website to pull historical close approaches data dating back to year 1900         |
| mlcsv_future  | Join query from most recent close approach in CAD table with Neo table. See **join_query_future.sql**  |
| mlcsv_history | Join query from most recent close approach in CAD history table with Neo table. See **join_query.sql** |
