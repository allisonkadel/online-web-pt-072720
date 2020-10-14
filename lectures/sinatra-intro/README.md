# What is the internet?
## servers and clients - clients make requests to servers for data and servers send back answers
## how data flows, how we transport it
## series of underground connections to connect machines (clients and servers) using IP addresses

# What is the world wide web? What/who is it designed for?
## sits on top of the internet
## a platform to connect servers and clients (clients are web browsers)
## HTTP (hyper text transfer protocol) - protocol for web browsers to send and receive data
## regulate protocol of communication
## peoples/users to resources

# What is a web framework and why would we use it?
## library of prewritten code that is commonly used in creating web apps
## it lets us work faster by standardizing the basic web application components and lets us focus on bulding out more unique features of our apps
## Sinatra is an example of a thinner web framework (micro-framework)
## Rails is an example of a fatter / more robust framework
## both Rails and Sinatra are built on top of the Rack gem, which allows us to connect application code to a webserver

# What is an MVC framework?
## specific pattern for a web framework
## M - model - where data is manipulated and stored - interfaces with the db via ORM (backend)
## V - view - handles what the user sees and how they see it (presentation of data) (frontend)
## C - controller - interface between the model and view, routing mechanism that direct the flow of the requests and responses, routing makes use of the uri

# What are the types of HTTP requests that we can send?
## GET => retrieves data from the server (READ)
## POST => sends data to the server (CREATE, UPDATE, DESTROY)