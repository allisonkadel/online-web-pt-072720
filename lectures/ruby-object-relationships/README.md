# Ruby Object Relationships

### Some definitions
* What is a relationship?
_connections/communication between classes_
* Why form relationships?
_help us do proper domain modeling_
* What is domain modeling?
_mimic the way things are organized in your life (showing their behavior) and turning it into code (classes, objects, etc)_
* What is a domain?
_the topic or area of interest we are mimicking_
* What is a model?
_a class that models a real world entity and stores data about itself_
* How can we visualize these domains?
_Entity Relation Diagram - see `domain.draw.io` file or [click here](https://drive.google.com/file/d/1agk5-fn95RR4GUR-JYuSLMPW10_XCt8C/view?usp=sharing_)

### Types of Model Relationships
* one to many
    * belongs to - Dog belongs to a Shelter
    * has many - Shelter has many Dogs
* many to many
    * has many through - Shelter has many Breeds through Dogs and Breed has many Shelters through Dogs
* one to one
    * belongs to - Car belongs to a TaxiDriver
    * has one - TaxiDriver has one Car
*_These describe two-directional relationships. You might also see these types of relationships used to refer to a unidirectional relationships - for example Dog belongs to Shelter could be described as one-to-one_

### Building a Domain - Grocery Store