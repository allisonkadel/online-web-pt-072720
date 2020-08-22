# what is an object?
    # => a thing that has characteristics (attributes) and does actions / behaviors (methods)
    # => carries its data around inside it
# example of an object in Ruby
    # => a string, integer, pretty much any piece of data!
a_string = "this is a string"
    # => where did it come from, who made it?
        # => a class - a blueprint or factory for this string object
a_string2 = String.new("this is another string")
a_string.class
# => String
a_string.methods
a_string.capitalize
# => "This is a string"
# we can also build a custom class
class Cat #=> least amount of code that's needed to create Cat instances
end
# what do we mean by instance?
    #=> an instance is a copy of the Cat blueprint
    #=> a Cat object is an instance of the Cat class
cat = Cat.new
cat.instance_of?(Cat)
#=> true
# our instances can't currently do anything. how do we add functionality?
# how do we define behaviors and characterics?
    #=> we can create methods inside the class to define Cat behavior
class Cat

    def meow
        puts "Meow!"
    end

end
cat = Cat.new
cat.meow
#=> Meow!
    #=> we can create attributes (instance variables)
class Cat
    # we want a cat to have a name and an age
    # attr_writer :name
    # attr_reader :name
    attr_accessor :name, :age

    def meow
        puts "Meow!"
    end

    # def name=(name)
    #     @name = name
    # end

    # def name
    #     @name
    # end

end
cat = Cat.new
cat.name = "Toby"
# what if we wanted cats to have a name and an age immediately when they are created?
class Cat
    # let's build a class method that returns the average age of all the cats
    # how will we store all the cats' ages?

    attr_accessor :name
    attr_reader :age

    @@ages = [] # this is better as a class variable rather than a constant because we know it will change!
    # AGES = []

    def initialize(name, age)
        @name = name
        @age = age
        @@ages << age
    end

    def meow
        puts "Meow! My name is #{self.name}!" # self is a particular instance of Cat - the instance that invoked the method
    end

    def self.ages
        puts "The value of self in the ages method is #{self}"
        @@ages
    end

    def self.average_age
        # we can use the count method to count the elements in the array
        self.ages.sum / self.ages.count
    end

end
