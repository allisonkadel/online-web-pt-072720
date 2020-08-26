class Department
    # has a name
    # has a number
    # Department has many Products

    # can be created with a name and a number
    # can add a product
    # can return an array of its products
    attr_reader :products

    def initialize(name, number)
        @name = name
        @number = number
        # @products = []
        # Using @products to store associated products violates Single Source of Truth principle
        # There should be a singular owner of information about associations between classes
        # Product instances are instantiated with a Department instance and thus are owning the association information
        # When we want to know a Department's Products, we can ask the Product class via the #products method below
    end

    def add_product(name, price, aisle)
        # self.products << Product.new(name, price, aisle, self)
        Product.new(name, price, aisle, self)
    end

    def products
        Product.all.select {|product| product.department == self}
    end

end