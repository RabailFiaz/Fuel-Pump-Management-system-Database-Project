# Fuel-Pump-Management-system-Database-Project

This repository contains the database project for a Fuel Pump Management System, divided into four phases. The project involves creating a robust database to manage fuel pumps, transactions, customers, employees, fuel tanks, payments, fuel types, tank refills, maintenance records, and suppliers.
<br>

**Table of Contents**
<ul>
<li>Project Overview</li>
<li>Entities and Attributes</li>
<li>Phase 1: Description and Relationships</li>
<li>Phase 2: ERD and Relational Schema</li>
<li>Phase 3: DDL and DML</li>
<li>Phase 4: Joins, Nested, and Correlated Queries</li>
<li>Installation and Setup</li>
<li>Contributing</li>
<li>Acknowledgements</li>
</ul>

**Project Overview**
<br>
The Fuel Pump Management System is designed to manage and track various aspects of fuel stations, including fuel pumps, transactions, customer details, employee management, fuel tanks, payments, and maintenance records. The project is structured into four phases, each building upon the previous to develop a comprehensive database system.
<br>

**Entities and Attributes**

<ul>
        <li>
            <strong>Fuel Pump</strong>
            <ul>
                <li>Pump_ID (Int, Primary Key)</li>
                <li>Location (Varchar)</li>
                <li>Capacity (Float)</li>
                <li>Fuel_type (Char)</li>
                <li>Status (Char)</li>
            </ul>
        </li>
        <li>
            <strong>Transaction</strong>
            <ul>
                <li>Transaction_ID (Int, Primary Key)</li>
                <li>Date_Time (DateTime)</li>
                <li>Fuel_Amount (Float)</li>
                <li>Payment_method (Char)</li>
            </ul>
        </li>
        <li>
            <strong>Customer</strong>
            <ul>
                <li>Customer_ID (Int, Primary Key)</li>
                <li>Name (Char)</li>
                <li>Contact_Number (Int)</li>
                <li>Email (Varchar)</li>
                <li>Address (Varchar)</li>
            </ul>
        </li>
        <li>
            <strong>Employee</strong>
            <ul>
                <li>Employee_ID (Int, Primary Key)</li>
                <li>Name (Char)</li>
                <li>Contact_Number (Int)</li>
                <li>Email (Varchar)</li>
                <li>Position (Varchar)</li>
            </ul>
        </li>
        <li>
            <strong>Fuel Tank</strong>
            <ul>
                <li>Tank_ID (Int, Primary Key)</li>
                <li>Location (Char)</li>
                <li>Capacity (Float)</li>
                <li>Fuel_type (Char)</li>
                <li>Current_level (Float)</li>
            </ul>
        </li>
        <li>
            <strong>Payment</strong>
            <ul>
                <li>Payment_ID (Int, Primary Key)</li>
                <li>Amount (Float)</li>
                <li>Payment_method (Char)</li>
                <li>Date_Time (DateTime)</li>
            </ul>
        </li>
        <li>
            <strong>Fuel Type</strong>
            <ul>
                <li>Fuel_Type_ID (Int, Primary Key)</li>
                <li>Type_Name (Char)</li>
            </ul>
        </li>
        <li>
            <strong>Tank Refill</strong>
            <ul>
                <li>Refill_ID (Int, Primary Key)</li>
                <li>Date_Time (DateTime)</li>
                <li>Refill_Amount (Float)</li>
            </ul>
        </li>
        <li>
            <strong>Maintenance Record</strong>
            <ul>
                <li>Maintenance_ID (Int, Primary Key)</li>
                <li>Date_Time (DateTime)</li>
                <li>Description (Varchar)</li>
                <li>Cost (Float)</li>
            </ul>
        </li>
        <li>
            <strong>Supplier</strong>
            <ul>
                <li>Supplier_ID (Int, Primary Key)</li>
                <li>Name (Char)</li>
                <li>Contact_Number (Int)</li>
                <li>Email (Varchar)</li>
                <li>Address (Varchar)</li>
            </ul>
        </li>
    </ul>
    
**Phase 1: Description and Relationships**
<br>
In this phase, we define the descriptions and relationships between the entities listed above. Each entity represents a fundamental component of the Fuel Pump Management System, and relationships will be established to ensure data consistency and integrity.
<br>
**Key Relationships:**
<ul>
<li>Fuel Pump ↔ Fuel Tank: A fuel pump is connected to a specific fuel tank.</li>
<li>Transaction ↔ Customer: A transaction is linked to a specific customer.</li>
<li>Transaction ↔ Employee: An employee manages the transaction.</li>
<li>Transaction ↔ Payment: A transaction involves a payment.</li>
<li>Fuel Type ↔ Fuel Pump & Fuel Tank: Both fuel pumps and fuel tanks are associated with specific fuel types.</li>
<li>Maintenance Record ↔ Fuel Pump: Maintenance records are tied to fuel pumps.</li>
<li>Supplier ↔ Fuel Type: Suppliers provide specific fuel types.</li>
<li>Tank Refill ↔ Fuel Tank: Tank refills are recorded for each fuel tank.</li>
</ul>

**Phase 2: ERD and Relational Schema**
<br>
This phase involves creating an Entity-Relationship Diagram (ERD) and defining the relational schema based on the entities and their relationships. The ERD visually represents the structure of the database and how the entities are interconnected.
<br>

*ERD Diagram:*
<br>
The ERD will be designed using tools like ERDPlus or any ERD software, showcasing all the entities, attributes, and relationships.

<br>

*Relational Schema:*
<br>
The relational schema will be derived from the ERD, defining tables, primary keys, foreign keys, and relationships in a format suitable for implementation in a relational database.

<br>

**Phase 3: DDL and DML**
<br>
In this phase, we create the database using Data Definition Language (DDL) and populate it using Data Manipulation Language (DML) statements.
<br>
*DDL:*
<ul>
<li>Create Tables: SQL scripts to create all necessary tables as per the relational schema.</li>
<li>Define Constraints: Setting up primary keys, foreign keys, and other constraints.</li>
</ul>

*DML:*
<ul>
<li>Insert Data: SQL scripts to insert sample data into the tables.</li>
<li>Update and Delete: Perform update and delete operations on the data.</li>
</ul>
<br>

**Phase 4: Joins, Nested, and Correlated Queries**
<br>
This phase focuses on advanced SQL queries to retrieve data from the database.
<br>
*Joins:*
<br>
Implementing inner joins, left joins, right joins, and full outer joins to combine data from multiple tables.<br>
*Nested Queries:*
<br>
Writing subqueries to retrieve data based on results from another query.<br>
*Correlated Queries:*
<br>
Developing correlated subqueries where the subquery depends on the outer query for its values.
<br>

**Installation and Setup**
<br>
To set up the project locally:
<ul>
<li>Clone the repository:
git clone https://github.com/yourusername/fuel-pump-management.git</li>

<li>Navigate to the project directory:
cd fuel-pump-management</li>

<li>Install necessary dependencies (e.g., MySQL, XAMPP Control Panel).</li>
<li>Run the SQL scripts provided in the sql/ directory to create and populate the database.</li>
</ul>

<br>

**Contributing**
<br>
Contributions are welcome! If you have suggestions or improvements, feel free to submit a pull request or open an issue.
<br>

**Acknowledgements**
<ul>
  <li>ERDPlus for ERD design tools.</li>
<li>SQL tutorials and documentation for query examples.</li>
</ul>
