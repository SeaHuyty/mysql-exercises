# Database Course Exercises

Welcome to the exercises archive for my database course. Below is a guide to each exercise, organized by topic. These exercises cover a range of database concepts and SQL techniques to help you learn and apply relational database principles.

---

### 1. Entity Relationship Diagram (ER Diagram)

Explore exercises related to creating and interpreting Entity-Relationship Diagrams.

* **Exercise 1: Company Database**

  The company database keeps track of a company's employees, departments, and projects.
  * [See Exercise](Entity-Relationship-Model/Company-Database/image.png)
  * [Solution](Entity-Relationship-Model/Company-Database/erDiagram.png)

* **Exercise 2: University Database**

  A university database that is used to keep track of student's transcripts.
  * [See Exercise](Entity-Relationship-Model/University-Database/image.png)
  * [Solution](Entity-Relationship-Model/University-Database/erDiagram.png)

---

### 2. Entity Relationship Model Schema

Here, you will learn how to convert logical database designs into relational models.

* **Exercise 1: Company Database**

  Convert the ER Diagram of the company database above into a schema.
  * [See Exercise](Entity-Relationship-Model/Company-Database/image.png)
  * [Solution](Entity-Relationship-Schema/Company-Database/modelSchema.png)

* **Exercise 2: University Database**

  Convert the ER Diagram of the university database above into a schema.
  * [See Exercise](Entity-Relationship-Model/University-Database/image.png)
  * [Solution](Entity-Relationship-Schema/University-Database/modelSchema.png)

* **Exercise 3: Mail Order Database**

  A mail order database in which employees take orders for parts from customers.
  * [See Exercise](Entity-Relationship-Schema/Mail-Order-Database/image.png)
  * [Solution](Entity-Relationship-Schema/Mail-Order-Database/modelSchema.png)
 
---

### 3. Normalization

Normalization exercises help you break down complex data structures into more manageable forms.

* **Exercise 1: Software consultant firm**

  A software contract and consultancy firm maintains details of all various projects in which its employees are currently involved.
  * [See Exercise](Normalization/image.png)
  * [Solution](Normalization/Solution)

---

### 4. Data Definition Language (DDL)

* **Exercise 1: Company Schema**

  Turn the following company schema into MySQL script.
  * [See Exercise](Data-Definition-Language/Company-Schema/image.png)
  * [Solution](Data-Definition-Language/Company-Schema/solution.sql)

* **Exercise 2: University Schema**

  Turn the following university schema into MySQL script.
  * [See Exercise](Data-Definition-Language/University-Schema/image.png)
  * [Solution](Data-Definition-Language/University-Schema/solution.sql)

* **Exercise 3: Mail Order Schema**

  Turn the following mail order schema into MySQL script.
  * [See Exercise](Data-Definition-Language/Mail-Order-Schema/image.png)
  * [Solution](Data-Definition-Language/Mail-Order-Schema/solution.sql)

* **Exercise 4: Sale Management System Schema**

  Turn the following sale management system schema into MySQL script.
  * [See Exercise](Data-Definition-Language/Sale-Management-System-Schema/image.png)
  * [Solution](Data-Definition-Language/Sale-Management-System-Schema/solution.sql)

---

### 5. Data Manipulation Language

* **Exercise 1: University Database**
  
  Download this [University Database](Data-Manipulation-Language/universityDB.sql) to Begin the Exercise.
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
  Click here to see the [Solution](Data-Manipulation-Language/Solution/insertion.sql)
  * **7**. Change the phone number of student with SID = 1 to ’555-1111’.
    * [Solution](Data-Manipulation-Language/Solution/exercise7.sql)
  * **8**. Update the city of the student with SID = 3 to ’Boston’.
    * [Solution](Data-Manipulation-Language/Solution/exercise8.sql)
  * **9**. Rename the course with CNumber = 101 to ’Advanced Databases’.
    * [Solution](Data-Manipulation-Language/Solution/exercise9.sql)
  * **10**. Update the instructor of the section with SecNum = 2 to ’Dr. Miller’.
    * [Solution](Data-Manipulation-Language/Solution/exercise10.sql)
  * **11**. Change the grade of student 4 in course 104 to ’A’.
    * [Solution](Data-Manipulation-Language/Solution/exercise11.sql)
  * **12**. Remove the student with SID = 5 from the STUDENT table.
    * [Solution](Data-Manipulation-Language/Solution/exercise12.sql)
  * **13**. Delete the course with CNumber = 105 from the COURSE table.
    * [Solution](Data-Manipulation-Language/Solution/exercise13.sql)
  * **14**. Remove the section with SecNum = 5 from the SECTION table.
    * [Solution](Data-Manipulation-Language/Solution/exercise14.sql)
  * **15**. Delete the grade record of student 2 in course 102 from the STUDENT GRADES table.
    * [Solution](Data-Manipulation-Language/Solution/exercise15.sql) 
  * **16**. Remove the department ’Electrical Engineering’ from the DEPARTMENT table.
    * [Solution](Data-Manipulation-Language/Solution/exercise16.sql)

---

### 6. Transactions

Learn how to work with database transactions and concurrency control.

* **ACID Transactions**
  This exercise covers writing SQL statements for managing ACID properties in transactions.
  *File: `transactions.sql`*

* **Transaction Control**
  Practice using `COMMIT`, `ROLLBACK`, and `SAVEPOINT` to manage your database transactions.
  *File: `transaction_control.sql`*

### 7. Joins and Subqueries

This section focuses on combining data from multiple tables using joins and subqueries.

* **Inner and Outer Joins**
  Learn how to perform inner, left, right, and full outer joins.
  *File: `joins.sql`*

* **Subqueries**
  Practice writing subqueries for filtering and nested queries.
  *File: `subqueries.sql`*

### 8. Indexes and Views

Improve the performance and readability of your database with indexes and views.

* **Creating Indexes**
  In this exercise, you’ll learn how to create and use indexes to optimize query performance.
  *File: `indexes.sql`*

* **Using Views**
  Practice creating and using views to simplify complex queries.
  *File: `views.sql`*

## Additional Notes

Feel free to explore each exercise in detail and modify the queries for different use cases. Each exercise serves as a hands-on approach to learning core database concepts, and you can build upon these foundations to tackle more complex database challenges.

