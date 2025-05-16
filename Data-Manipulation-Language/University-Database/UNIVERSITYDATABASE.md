# University Database
  Download this [University Database](./universityDB.sql) to begin the exercise.
  * **1**. Insert five students into the STUDENT table:
    ```
         (1 , John , Doe , 2001-03-15 , M , Senior , CS , 123 Maple St , 555-1234 , 555-5678 , New York , NY , 10001 , Computer Science , Mathematics)
         (2 , Jane , Smith , 2002-06-22 , F , Junior , EE , 456 Oak St , 555- 9876 , 555-5432 , Los Angeles , CA , 90001 , Electrical Engineering , Physics) 
         (3 , Sam , Brown , 2000-09-10 , M , Senior , ME , 789 Pine St , 555-6543 , 555-3210 , Chicago , IL , 60601 , Mechanical Engineering , Business) 
         (4 , Emily , Davis , 2003-01-05 , F , Sophomore , BIO , 321 Cedar St, 555-2222 , 555-8888 , Houston , TX , 77001 , Biology , Chemistry) 
         (5 , Michael , Johnson , 2001-12-20 , M , Senior , CS , 654 Birch St , 555-4444 , 555-6666 , Seattle , WA , 98101 , Computer Science , Statistics)
  * **2**. Insert five departments into the DEPARTMENT table:
    ```
         (Computer Science, CS, Engineering, 101, 555-1111)
         (Electrical Engineering, EE, Engineering, 102, 555-2222) 
         (Mechanical Engineering, ME, Engineering, 103, 555-3333) 
         (Biology, BIO, Science, 104, 555-4444) 
         (Physics, PHYS, Science, 105, 555-5555) 
  * **3**. Insert five courses into the COURSE table:
    ```
         (101, Database Systems, Intro to Databases, 3, Undergrad, CS) 
         (102, Digital Circuits, Logic Circuits, 3, Undergrad, EE) 
         (103, Thermodynamics, Heat Transfer Principles, 3, Undergrad, ME) 
         (104, Genetics, Introduction to Genetics, 3, Undergrad, BIO) 
         (105, Quantum Mechanics, Quantum Theory Basics, 3, Undergrad, PHYS)
  * **4**. Insert five sections into the SECTION table:
    ```
       (1, 2024, Spring, Dr. Smith, 101) 
       (2, 2024, Fall, Dr. Johnson, 102) 
       (3, 2025, Spring, Dr. Lee, 103) 
       (4, 2025, Fall, Dr. Miller, 104) 
       (5, 2025, Spring, Dr. Brown, 105)
  * **5**. Insert value courses into GRADE REPORT table:
    ```
       (A , 4.0) 
       (B+ , 3.5) 
       (B , 3.0) 
       (C , 2.5)
  * **6**. Insert value grade records into the STUDENT GRADES table:
    ``` 
       (1, 101, 1, Spring, 2024, A)  
       (2, 102, 2, Fall, 2024, B+)  
       (3, 103, 3, Spring, 2025, B)  
       (4, 104, 4, Fall, 2025, A-)  
       (5, 105, 5, Spring, 2025, C+)
  Click here to view the solution for the insertion above: [Solution](./Solution/insertion.sql)
  * **7**. Change the phone number of student with SID = 1 to ’555-1111’.
    * [Solution](./Solution/exercise7.sql)
  * **8**. Update the city of the student with SID = 3 to ’Boston’.
    * [Solution](./Solution/exercise8.sql)
  * **9**. Rename the course with CNumber = 101 to ’Advanced Databases’.
    * [Solution](./Solution/exercise9.sql)
  * **10**. Update the instructor of the section with SecNum = 2 to ’Dr. Miller’.
    * [Solution](./Solution/exercise10.sql)
  * **11**. Change the grade of student 4 in course 104 to ’A’.
    * [Solution](./Solution/exercise11.sql)
  * **12**. Remove the student with SID = 5 from the STUDENT table.
    * [Solution](./Solution/exercise12.sql)
  * **13**. Delete the course with CNumber = 105 from the COURSE table.
    * [Solution](./Solution/exercise13.sql)
  * **14**. Remove the section with SecNum = 5 from the SECTION table.
    * [Solution](./Solution/exercise14.sql)
  * **15**. Delete the grade record of student 2 in course 102 from the STUDENT GRADES table.
    * [Solution](./Solution/exercise15.sql) 
  * **16**. Remove the department ’Electrical Engineering’ from the DEPARTMENT table.
    * [Solution](./Solution/exercise16.sql)
