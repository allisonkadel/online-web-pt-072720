class Product
    # has a name
    # has a price
    # has an aisle
    # Product belongs to Department

    # can be created with a name, price, and aisle
    # can read name, price, and aisle
    attr_reader :name, :price, :aisle, :department

    @@all = []

    def initialize(name, price, aisle, department)
        @name = name
        @price = price
        @aisle = aisle
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end
end