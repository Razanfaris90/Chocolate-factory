
# Chocolate Factory Database Management System(Melting Moments)

This project is a database management system for Melting Moments, a fictional chocolate factory. The system is designed to support various business rules, procedures, and data management requirements for the production and delivery of high-quality chocolate products. The database facilitates tracking ingredients, managing chocolate products, packaging, and driver assignments, with a focus on quality control and regulatory compliance.

## Project Overview
The Chocolate Factory Database Management System is built to ensure efficient production, packaging, and delivery workflows. It supports business rules for maintaining quality, sustainability, and food safety while meeting customer satisfaction and regulatory standards.

## Key Business Entities
- Ingredients: Tracks raw materials, such as cocoa beans, sugar, milk, and flavors.
- Chocolate Products: Manages different types of chocolates, including bars, truffles, and bonbons.
- Packaging: Records materials used for packaging products, like boxes and wrappers.
- Driver: Manages delivery personnel responsible for distributing chocolates to customers and distributors.

## Database Design
The database is normalized to 3NF (Third Normal Form) to ensure data integrity and reduce redundancy:
1. Ingredients Table: Stores ingredient details and quantities.
2. Chocolate Products Table: Contains product ID, name, and flavor information.
3. Packaging Table: Details types of packaging materials used.
4. Driver Table: Records driver details including license and delivery locations.

### Relationships
- Uses: Ingredients are used in chocolate products.
- Delivers: Drivers are assigned to deliver packaged products.
- Associates: Chocolate products are associated with specific packaging.

## SQL Implementation
The project includes SQL files for:
1. Database Creation: Schema definition and table creation.
2. Data Insertion: Sample data for each entity to support production and distribution workflows.
3. Queries: Predefined queries to retrieve information for operational insights, including ingredient usage, product availability, and delivery tracking.

## Task Distribution
- Razan Almalki: Business Rules,Mapping,Sql scripting,presentation slides
- Retaj Baaqeel: Chen's Notation,Mapping Sql scripting
- Raghad Murad:  UML Digram,Normalization,Sql scripting

## Business Rules and Policies
- Quality Control: Ensures strict quality checks for all chocolate products.
- Sustainability: Sources ingredients through ethical and environmentally friendly practices.
- Food Safety: Adheres to allergen labeling and regulatory standards.

This project provides a comprehensive solution for managing the production, packaging, and delivery processes within a chocolate factory, highlighting the importance of data-driven decision-making in manufacturing and distribution.
