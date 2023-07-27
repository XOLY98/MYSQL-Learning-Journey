#TO SHOW DATABASES 
show databases;

#TO CREATE A DATABASE AND USE IT
create database LC_Studio;
use LC_Studio;

#TO CREATE A TABLE AND DISPLAY IT
create table Intern_details (Id int auto_increment primary key, Name varchar(15), Surname varchar(15), Gender char(1),Age int,Username text(20), Password text(20));
show tables;

#INSERTING DATA TO THE TABLE
INSERT INTO Intern_details (name, surname, gender, age, username, password)
VALUES
  ("Xolelwa", "Manqina", "F", 25, "xolelwa98", "xoly98"),
  ("Nozipho", "Mayila", "F", 26, "nozipho99", "noz99"),
  ("Thandolwethu", "Beko", "M", 20, "thando100", "thando100"),
  ("Siphamandla", "Mlanjana", "M", 22, "sipha101", "spha101");

#TO DISPLAY A STRUCTURE OF A TABLE
describe Intern_details;


#TO SEE EVERYTHING ON THE TABLE
select * from Intern_details;
 
#TO DELETE A SINGLE ROW
DELETE FROM Intern_details
WHERE id = 8
LIMIT 1;

#SHOW UNIQUE DATA
select distinct Surname from Intern_details;

#TO COUNT NUMBER OF PEOPLE IN THE TABLE
select count(name) as count_name from Intern_details;

#TOTAL SUM OF AGES OF STUDENTS
select sum(age) from Intern_details;

#TO SELECT SPECIFIC COLUMN
SELECT Name,Age from Intern_details;

#IF YOU WANT TO FILTER AGE GREATER OR LOWER THAN 20
select * from Intern_details WHERE Age > 20; 
select * from Intern_details WHERE Age < 20; 

#TO SHOW SPECIFIC GENDER GROUP ONLY
select Name gender from Intern_details where gender = "F";
select Name gender from Intern_details where gender = "M";

#TO SHOW THING IN BETWEEN
SELECT * FROM Intern_details where Age between '25' and '21';

#UPDATING AGE OF A SPECIFIC INTERN
UPDATE Intern_details
SET Age =30 
WHERE Id = 1;

#ALTER A TABLE BY ADDING A NEW COLUMN
ALTER TABLE Intern_details
ADD Email_Address varchar(30) not null;

#Replace your_table_name with the actual name of the table you want to truncate.
TRUNCATE TABLE your_table_name;

#Including the GRANT statement, to grant privileges to users.
GRANT privileges ON database_name.table_name TO 'user_name'@'host';

#TO COMMIT
COMMIT;





