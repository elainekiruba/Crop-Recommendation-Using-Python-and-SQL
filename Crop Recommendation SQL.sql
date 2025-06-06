CREATE DATABASE crop_db;

USE crop_db;

CREATE TABLE IF NOT EXISTS recommendations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    N INT,
    P INT,
    K INT,
    temperature FLOAT,
    humidity FLOAT,
    ph FLOAT,
    rainfall FLOAT,
    recommended_crop VARCHAR(50)
);

USE crop_db;

SELECT * FROM recommendations;


