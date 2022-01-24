| Field Name | Type      | Description                                                          |
|------------|-----------|----------------------------------------------------------------------|
| des        | string    | primary designation of the asteroid or comet (e.g.                   |
| orbit_id   | string    | orbit ID                                                             |
| jd         | string    | time of close-approach (JD Ephemeris Time)                           |
| cd         | timestamp | time of close-approach (formatted calendar date/time                 |
| dist       | number    | nominal approach distance (au)                                       |
| dist_min   | number    | minimum (3-sigma) approach distance (au)                             |
| dist_max   | number    | maximum (3-sigma) approach distance (au)                             |
| v_rel      | number    | velocity relative to the approach body at close approach (km/s)      |
| v_inf      | number    | velocity relative to a massless body (km/s)                          |
| t_sigma_f  | number    | 3-sigma uncertainty in the time of close-approach (formatted in days |
| h          | number    | absolute magnitude H (mag)  