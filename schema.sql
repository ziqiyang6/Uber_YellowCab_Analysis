CREATE TABLE if NOT EXISTS yellowcab
(
    id                  INTEGER     PRIMARY KEY,
    pickup_time         TIMESTAMP   NOT NULL,
    dropoff_time        TIMESTAMP   NOT NULL,
    passenger_num       INTEGER     NOT NULL,
    trip_distance       FLOAT       NOT NULL,
    fare_amount         FLOAT       NOT NULL,
    latitude_dropoff    FLOAT       NOT NULL,   
    longitude_dropoff   FLOAT       NOT NULL, 
    latitude_pickup     FLOAT       NOT NULL, 
    longitude_pickup    FLOAT       NOT NULL,
    UNIQUE(pickup_time, dropoff_time, passenger_num, trip_distance, fare_amount, latitude_dropoff,
    longitude_dropoff, latitude_pickup, longitude_pickup )
);

CREATE TABLE if NOT EXISTS uber
(
    id                  INTEGER     PRIMARY KEY,
    pickup_time         TIMESTAMP   NOT NULL,
    dropoff_time        TIMESTAMP   NOT NULL,
    trip_time           FLOAT     NOT NULL,
    trip_distance       FLOAT       NOT NULL,
    fare_amount         FLOAT       NOT NULL,
    latitude_dropoff    FLOAT       NOT NULL,   
    longitude_dropoff   FLOAT       NOT NULL, 
    latitude_pickup     FLOAT       NOT NULL, 
    longitude_pickup    FLOAT       NOT NULL,
    UNIQUE(pickup_time, dropoff_time, trip_time, trip_distance, fare_amount, latitude_dropoff,
    longitude_dropoff, latitude_pickup, longitude_pickup )
);

CREATE TABLE if NOT EXISTS hourly_weather
(
    id                  INTEGER     PRIMARY KEY,
    date                TIMESTAMP   NOT NULL,
    temperature         FLOAT   NOT NULL,
    wind_speed          FLOAT     NOT NULL,
    precipitation       FLOAT       NOT NULL,
    UNIQUE(date, temperature, wind_speed, precipitation)
);

CREATE TABLE if NOT EXISTS daily_weather
(
    id                  INTEGER     PRIMARY KEY,
    date                TIMESTAMP   NOT NULL,
    temperature         FLOAT   NOT NULL,
    wind_speed          FLOAT     NOT NULL,
    precipitation       FLOAT       NOT NULL,
    weather             VARCHAR     NOT NULL,
    snow                FLOAT       NOT NULL,
    UNIQUE(date, temperature, wind_speed, precipitation, weather, snow)
);

CREATE TABLE if NOT EXISTS weather_sun
(
    id                  INTEGER     PRIMARY KEY,
    date                TIMESTAMP   NOT NULL,
    sunrise             INTEGER     NOT NULL,
    sunset              INTEGER       NOT NULL,
    UNIQUE(date, sunrise, sunset)
);