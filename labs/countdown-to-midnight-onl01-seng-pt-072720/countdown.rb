def countdown(number) # number is our parameter - it will hold the value of whatever argument is passed in when this method is invoked
    while number > 0
        puts "#{number} SECOND(S)!"
        # number = number - 1
        number -= 1 # decrementing by 1
    end
    "HAPPY NEW YEAR!" # here we are taking advantage of Ruby's 
    # implicit return - the last interpreted line in a method will be the return value of that method
    # using the explicit `return` keyword would be redundant in this situation
end

# You can run `learn --f-f to only see the first failing test`
# You can run `clear` to clear your terminal

def countdown_with_sleep(number)
    # Use the stack overflow post linked in the lesson to figure out how to establish a wait time between print statements
end