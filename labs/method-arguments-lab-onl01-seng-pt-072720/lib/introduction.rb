require 'pry' # the pry gem needs to be required for us to use a binding in our code (below)

def introduction(name)
    # name will serve as a local variable inside of our method body

    # preferred solution - interpolation:
    puts "Hi, my name is #{name}." # the to_s method is implicitly called

    # alternative approach using string concatenation and explicit type conversion:
    puts "Hi, my name is " + name.to_s + "."
    # this approach is more computationally costly because a new string is created with every concatenation

end

def introduction_with_language(language, name) # The order of arguments matters!
    puts name + "," + language
end

binding.pry # we can use pry to freeze at this point in our program, and test out calling our methods

# The code above isn't quite passing. When you run `learn` or `learn test`, the command `rspec` is being run under the hood, which runs the test code in the spec directory. Make some changes and pass the remaining test!