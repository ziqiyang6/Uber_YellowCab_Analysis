CREATE TABLE if NOT EXISTS yellowcab
(
    id                  UUID        NOT NULL PRIMARY KEY,
    pickup_time         TIMESTAMP   NOT NULL,
    dropoff_time        TIMESTAMP   NOT NULL,
    passenger_num       INTEGER     NOT NULL,
    trip_distance       FLOAT       NOT NULL,
    latitude_dropoff    FLOAT       NOT NULL,   
    longitude_dropoff   FLOAT       NOT NULL, 
    latitude_pickup     FLOAT       NOT NULL, 
    longitude_pickup    FLOAT       NOT NULL
);

CREATE TABLE if NOT EXISTS uber
(
    id                  UUID        NOT NULL PRIMARY KEY,
    pickup_time         TIMESTAMP   NOT NULL,
    dropoff_time        TIMESTAMP   NOT NULL,
    trip_time           FLOAT     NOT NULL,
    trip_distance       FLOAT       NOT NULL,
    latitude_dropoff    FLOAT       NOT NULL,   
    longitude_dropoff   FLOAT       NOT NULL, 
    latitude_pickup     FLOAT       NOT NULL, 
    longitude_pickup    FLOAT       NOT NULL
);