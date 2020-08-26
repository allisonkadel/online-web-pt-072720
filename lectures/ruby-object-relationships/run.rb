require "pry" 

require_relative "department.rb" # load the Department class code
require_relative "product.rb" # load the Product class code

dairy = Department.new('dairy',1) # create test data
#=> #<Department:0x00007fc9e30d6b78 @name="dairy", @number=1>
dairy.add_product('milk', 3.00, 6)
dairy.products # a Department knows about its Products
#=> [#<Product:0x00007fac9a19e2d8
#   @aisle=6,
#   @department=
#       #<Department:0x00007fac9a105380 @name="dairy", @number=1, @products=[...]>,
#   @name="milk",
#   @price=3.0>]
milk = dairy.products[0]
milk.department # a Product knows about its Department
#=> #<Department:0x00007fc9e30d6b78 @name="dairy", @number=1>


binding.pry # open pry console with all class data loaded