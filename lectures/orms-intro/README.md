_To test out SQL commands and Ruby methods we built, navigate to the root directory and run `rake console`. This will load a Pry environment with all of our code loaded._

## WORKING WITH RELATIONAL DATABASES AND ORMS

### what is a relational database and why is it useful?
- lets us relate tables to other tables to map out our object relationships
- lets us store data for long periods of time

### how do we create connections among our database tables?
- we can use ids of different objects
- foreign key maps to the primary key
- foreign key goes in the child class 

### what are the 4 ways we can interact with data?
- create records
- read records
- update records
- destroy records
- CRUD!

### how do we create a bridge or a mapping between sql and ruby? we want to be able to program in ruby but communicate with our database, which speaks sql
- execute sql queries against a database from inside of ruby
- use an orm! a pattern of encapsulating sql code with ruby methods that we can invoke to interact with our db


### what is an orm used for?
- convert ruby objects into raw data to be saved to the db
- convert raw data into ruby objects to be manipulated in our application 


### what are the conventions we should follow?
- db rows map to instances
- db columns map to attributes
- db tables map to ruby classes

### INITIAL SETUP FOR OUR ORM

1. setup database connection and environment file
2. setup classes
3. setup Rake task