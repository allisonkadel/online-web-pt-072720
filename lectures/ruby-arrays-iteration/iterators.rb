# What's the difference between looping and iterating?
    # Iterating => takes each element of an array or other iterable data structure and does something to it
    # Looping => does something not to each element but a group of things a certain amount of times based on a condition
# What are some common iterator methods?
    # each
    chore_array = ['wash dishes', 'feed cats', 'take out trash']
        # how would we use the each method to iterate through this array and print out each chore with an exclamation at the end?
        chore_array.each do |chore|
            puts "#{chore}!"
        end
        # block - holds code to be executed on each iteration
        # block parameter in between pipes
            # yield each element of the array into the block to be accessed or operated on
            # placeholder for each item in the array
        # what does the each method return?
            # the array that is being input, the array that is calling the each method
    # collect / map
        # what does it return?
            # a new array after each element has been operated on inside the block
            # a copy of the original with the changes
            # does not mutate original array
        chore_array.map do |chore|
            puts "#{chore}!" # the return value of this statement will be placed into the returned array for each element
        end
        # => [nil, nil, nil]

        exiting_chores = chore_array.map do |chore|
            "#{chore}!"
        end
        # => ["wash dishes!", "feed cats!", "take out trash!"]
            
        # it always returns an array with the same number of elements as the original array
    # when would we choose to use one or the other?
        # each => good when we want to do a side effect (like printing) but don't really care about the return value
        # map => signals that we probably care about the return value and want to return or save new data based on original data
    # which is quicker - using an iterator or using a lower-level looping construct like while?
        # use Ruby's built in benchmarking tools and see for yourself! https://ruby-doc.org/stdlib-2.5.3/libdoc/benchmark/rdoc/Benchmark.html
    # is each using a while construct under the hood?
        # the each method could be approximated in Ruby using a while construct:
            def eaching(array)
                i = 0
                while i < array.length
                    yield array[i]
                    i = i + 1
                end
                array
            end
        # The source code reveals it is written using a `for` loop in C. https://ruby-doc.org/core-2.4.1/Array.html#method-i-each

   