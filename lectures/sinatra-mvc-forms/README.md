# Sinatra MVC & Forms

## Deliverables
1. Create message-forum app skeleton
2. Migrate and seed database
3. Build a new `message` form that, when submitted, creates a new `message` in the db.

## Steps
1. controller route to get the form - `GET /messages/new` - new route
2. controller route to create the message - `POST /messages` - create route

## What is MVC?
* view - what the end user sees - ruby (erb), html, css, javascript
* model - representation of the data in the db in object - sits on top of our sqlite3 db, lets us interface with data
* controller - routes requests, invokes models to get data, displays proper views

## What is CRUD?
* actions we can do with our data in the db
* create
* read
* update
* destroy

## What does the HTTP Request Cycle look like?
1. user goes to a url (makes a get request)

* user -> server -> db -> server -> user
* user -> controller -> model -> db -> model -> controller -> view -> user

## What is REST? (REpresentation State Transfer)
* give every resource a unique identifier
* communicate statelessly


## What is RESTful routing?
* way to uniformly construct our routes 
* two components of a route - http verb/method, url/endpoint/resource/action
