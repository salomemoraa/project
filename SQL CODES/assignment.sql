#TempTable

create database student_scores;

  CREATE TEMPORARY TABLE student_scores (
    StudentID INT PRIMARY KEY,
    Firstname VARCHAR(50),
    Lastname VARCHAR(50),
    Score INT);
    
 INSERT INTO student_scores (StudentID, Firstname, Lastname, Score) VALUES
    (1, 'John', 'Doe', FLOOR(RAND() * 101)),
    (2, 'Jane', 'Smith', FLOOR(RAND() * 101)),
    (3, 'Alice', 'Johnson', FLOOR(RAND() * 101)),
    (4, 'Bob', 'Brown', FLOOR(RAND() * 101)),
    (5, 'Charlie', 'Davis', FLOOR(RAND() * 101)),
    (6, 'David', 'Wilson', FLOOR(RAND() * 101)),
    (7, 'Emily', 'Miller', FLOOR(RAND() * 101)),
    (8, 'Frank', 'Moore', FLOOR(RAND() * 101)),
    (9, 'Grace', 'Taylor', FLOOR(RAND() * 101)),
    (10, 'Helen', 'Anderson', FLOOR(RAND() * 101));
    
    select *from student_scores;