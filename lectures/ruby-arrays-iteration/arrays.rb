# What is an array?
    # collection of different data and values
    # ordered list of things
    # numbered collection
    # items in the array are called elements
    my_array = [2, true, "a string", [1, 2, 3]]
# How do we access values in the array?
    # by its index!
        second_element = my_array[1]
        #=> true
    # remember, indexing starts at 0!
        last_element = my_array[3]
        #=> [1, 2, 3]
        last_element = my_array[-1]
        #=> [1, 2, 3]
        last_element = my_array.last
        #=> [1, 2, 3]
        second_element_nested = my_array[3][1]
        #=> 2
# How can we manipulate an array?
    # Be aware of:
        # what the return value of the method is
        # whether the method is destructive (mutates the original array)
    # Adding
        # the shovel operator
            my_array << "another string"
            #=> [2, true, "a string", [1, 2, 3], "another string"] 
        # the push method
            my_array.push("yet another string")
            #=> [2, true, "a string", [1, 2, 3], "another string", "yet another string"] 
        # the unshift method
            my_array.unshift("truck")
            #=> ["truck", 2, true, "a string", [1, 2, 3], "another string", "yet another string"] 
    # Removing
        # the pop method
            my_array.pop
            #=> "yet another string"
            my_array
            #=> ["truck", 2, true, "a string", [1, 2, 3], "another string"] 
        # the shift method
            my_array.shift
            #=> "truck"
            my_array
            #=> [2, true, "a string", [1, 2, 3], "another string"] 
        # delete by value
            my_array.delete("a string")
            #=> "a string"
            my_array
            #=> [2, true, [1, 2, 3], "another string"] 
        # delete by index
            my_array.delete_at(1)
            #=> true
            my_array
            #=> [2, [1, 2, 3], "another string"] 
    # How do we add values to the middle of the array?
        # use the insert method
            my_array.insert(2, nil)
            #=> [2, [1, 2, 3], nil, "another string"] 
    # How do we replace values in the array?
        # use an index value
            my_array[2] = "a new string"
            #=> "a new string"
            my_array
            #=> [2, [1, 2, 3], "a new string", "another string"] 
    # How do we return a subset of the array?
        # use slice!
            my_array.slice(1,3)
            #=> [1, 2, 3], "a new string", "another string"]
            my_array
            #=> [2, [1, 2, 3], "a new string", "another string"] 
            my_array[1..3]
            #=> [1, 2, 3], "a new string", "another string"]
            my_array
            #=> [2, [1, 2, 3], "a new string", "another string"] 
    # Rearranging
        # use the sort method
        # go to ruby-docs.org and explore others
    # Explore the `slice!` method for fun