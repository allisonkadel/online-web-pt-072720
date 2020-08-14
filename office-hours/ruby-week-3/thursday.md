# NOTES FROM OFFICE HOURS - RUBY WEEK 3, THURSDAY

## QUESTIONS & ANSWERS

* OO Cash Register Lab
    * #new optionally takes an employee discount on initialization
    * #new sets the total to 0
    ```ruby
    def initialize(discount = 0) # set an optional discount argument that defaults to 0 (no discount)
        @total = 0 # set the total's initial value to 0 by saving it to an instance variable
        @discount = discount # save the value passed in as an argument (or 0, if no argument was provided) to the discount instance variable
    end
    ```

* attributes, readers, and writers, and self
    * the Cat class is like a factory. It
        1. makes cats (initialize method)
        2. defines the behavior of cats (methods)
        3. defines the characteristics of cats (attributes)
    * attribute readers let us ask a cat for one its attributes
    * attribute writers let us assign an attribute to a cat
    * the self keyword refers to the object that owns the currently executing code
        * in the body of an instance method, the owner of the currently executing code is the instance that invoked that method
        * in the body of a class method, the owner of the currently executing code is the class

```ruby
class Cat
    # attr_reader :name
    # attr_writer :name
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def name # reader method - allows us to ask the cat what its name is and see it returned
        @name
        puts self # prints #<Cat:0x00007f9e32090948>
    end

    def name=(name) # writer method - allows us to overwrite the cat's existing name
        @name = name
    end

    def self.say_hello_to_cats
        puts "hey, all cats!"
        puts self # prints Cat (the class)
    end

end

Cat.say_hello_to_cats
# "hey, all cats!"
#=> nil

cat1 = Cat.new("fuzzymittens")
cat1.name
cat1.name = "new name"
cat2 = Cat.new("fuzzymittens2")
cat2.name
cat1.name = "new name"
```

* Regex!
    * counting sentences
    ```ruby
    def counting_sentences
        self.split(/[?!.]/).delete_if{ |e| e.empty?}.count
        # splits the string by the delimeters ?, !, or ., and then deletes any empty string elements from the resulting array, then counts number of elements
    end
    ```
    * FYI: the #split method will not split the end of the string if it ends in a delimeter
    ```ruby
    "This is a sentence. This is a trailing sentence...This is a question sentence? Another trailing sentence...".split(/[?!.]/)
    #=> ["This is a sentence", " This is a trailing sentence", "", "", "This is a question sentence", " Another trailing sentence"] 
    # only empty elements were created for the . character (one of the specified delimeters) occurring in the middle of the string (not at the end)
    ```