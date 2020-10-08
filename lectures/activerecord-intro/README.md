_To test out SQL commands and Ruby methods we built, navigate to the root directory and run `rake console`. This will load a Pry environment with all of our code loaded._

## WORKING WITH RELATIONAL DATABASES AND ORMS

### What is an ORM?
* object relational mapping
* helps us communicate between a relational database and our ruby code by using abstraction
* define ruby  methods that execute sql queries
* mapping system: objects to rows/records, attributes to columns, models/classes to tables

### What is a DYNAMIC ORM?
* not fixed or attached to particular values (table names, columns)
* abstract
* inheritance allows us to include orm in all our classes

### What is ActiveRecord?
* A dynamic ORM that someone built and packaged into a Ruby Gem! THANK YOU!!!!!