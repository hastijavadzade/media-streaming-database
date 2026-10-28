# Media Streaming Service Database

## Overview

This project focuses on the design and implementation of a relational database for a media streaming service. It models users, subscriptions, payments, movies, series, actors, directors, producers, ratings, comments, and watch lists.

## Technologies

- PostgreSQL
- SQL
- Relational database design
- Entity-Relationship modeling
- Database normalization

## Database Features

- Relational schema with 18 tables
- Primary and foreign key constraints
- Relationships between users, media, subscriptions, and production entities
- Sample data for testing the database
- SQL queries for retrieving payment information, watch lists, actor credits, and highly rated media

## Project Structure

- `sql/MediaStreamingService.sql`: Creates the database tables and relationships.
- `sql/MediaStreamingService_data.sql`: Inserts sample records into the tables.

## How to Run

1. Create a PostgreSQL database.
2. Execute `sql/MediaStreamingService.sql` to create the tables.
3. Execute `sql/MediaStreamingService_data.sql` to insert the sample records.
4. Run the SQL queries to explore the database.

**Note:** The sample data is provided for testing and may not represent fully accurate real-world information.

