# NOTES FROM OFFICE HOURS - RUBY WEEK 3, MONDAY

## QUESTIONS & ANSWERS

* How do I know what order to complete the tests in? Sometimes they seem out of order.
    * sometimes the labs will be explicit about what order to write methods in, other times not
    * an approach is to go in the order of the failing test, passing one after the other
    * sometimes you notice that it makes sense to pass a later failing test before you pass an earlier one, or that you write code that passes a bunch of later tests
    * the bottom line is, you will get a feel for where to start coding first, and
    * become comfortable with jumping around a bit in your code, writing bits of code as you learn more about the requirements in order to pass the tests

* Collaborating Objects Lab
    * debugging the files method
    * remember what the return values of your methods are!
    * try to see the flow (order of execution) of your code, from the tests calling your methods to the end of the execution. Using pry can be helpful for this.

    ```ruby
    def files
        @files = # some logic to gather all the files
    end

    def import
        # this method should invoke your `files` method!
    end
    ```


