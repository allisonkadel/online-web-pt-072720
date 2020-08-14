# NOTES FROM OFFICE HOURS - RUBY WEEK 3, FRIDAY

## QUESTIONS & ANSWERS

* using instance variables vs using reader and writer methods
    * an instance variable stores data about a single characteristic of an object
    ```ruby
    class Dog
        def initialize(name) # here we are requiring a dog is created with a name
            @name = name # the name is stored in an instance variable @name, which the dog will carry around with it
            # each dog that is created has its own @name
        end
    end
    ```
    * an attribute reader method returns the value of a given instance variable
    ```ruby
    def name
        @name # returns the value inside the @name instance variable
    end
    ```
    * an attribute writer method lets us reassign a value to a given instance variable
    ```ruby
    def name=(new_dog_name)
        @name = new_dog_name # reassigns the value of @name to the new name passed in as an argument
    end
    ```
    * when should one or the other be used in the labs?
        * let's look at an example
        ```ruby
        class Dog
            
            def name=(name)
                @name = name
            end

            def name
                @name
            end

            def say_hello
                puts "Hi, my name is #{@name}. Woof!" # let's try using the instance variable first
            end

        end

        dog = Dog.new
        #=> #<Dog:0x00007f9b820f05a8>
        dog.name = 'jupiter'
        #=> "jupiter" 
        dog.name
        #=> "jupiter"
        dog.say_hello
        # Hi, my name is jupiter. Woof!
        #=> nil 
        ```
        * that worked fine. what if we make a mistake? will ruby catch it for us?
        ```ruby
        class Dog
            
            def name=(name)
                @name = name
            end

            def name
                @name
            end

            def say_hello
                puts "Hi, my name is #{@naame}. Woof!" # feverishly trying to complete the lab and not seeing my typo...
            end

        end
        
        dog = Dog.new
        dog.name = 'saturn'
        dog.say_hello
        # Hi, my name is . Woof!    # oh no! it silently failed to return the correct name
        #=> nil 
        ```

        * let's try again, using the attribute reader instead of the instance variable
        ```ruby
        class Dog
            
            def name=(name)
                @name = name
            end

            def name
                @name
            end

            def say_hello
                puts "Hi, my name is #{name}. Woof!" # invoking the name method instead! (remember, the self in front of it is implicit, and optional to write)
            end

        end

        dog = Dog.new
        dog.name = 'pluto'
        dog.say_hello
        # Hi, my name is pluto. Woof!
        #=> nil 
        ```
        * works fine, as expected. finally, let's introduce a typo
        ```ruby
        class Dog
            
            def name=(name)
                @name = name
            end

            def name
                @name
            end

            def say_hello
                puts "Hi, my name is #{naame}. Woof!" # feverishly trying to complete the lab and not seeing my typo...
            end

        end

        dog = Dog.new
        dog.name = 'Mars'
        dog.say_hello
        #=> NameError (undefined local variable or method `naame' for #<Dog:0x00007ffa5a8f5fa0 @name="mars">)
        # yay! ruby helped us catch our mistake!
        ```

        * This is just one scenario where it makes sense to use the reader method than directly accessing the attribute instance variable. It's up to you to explore more cases on your own and discover what works better. In general, we like to use reader and writer methods over directly accessing and manipulating instance variables. Not only does this usually make our code less error prone, but it also signals to other developers whether or not they _should_ be trying to read and write our data (_for example if we do provide a reader method and don't provide a writer, it should signal to them that they should avoid changing that attribute_). Again, explore this for yourself and find what works best!

* tips for debugging your code when you are getting unexpected results from the tests
    * walk through the relevant test to see exactly how it is testing your code
    * walk back through your code line by line, and
    * use binding.pry to freeze at various important moments in your code, in order to
    * test your assumption of how things are working, and find exactly where things broke!
    * usually it is a single moment where we made an incorrect assumption about how a line of code was working that leads to unknown errors and unexpected test results!