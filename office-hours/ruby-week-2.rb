 # RUBY WEEK 2 OFFICE HOURS
    # how does `yield` work?
        # `yield` is a keyword in Ruby used for executing a chunk of code (a block) that can be passed to a method upon invocation.
        # we can optionally decide to yield a value to the block 
        def yielding
            puts "the program is executing the code inside the method"
            yield(2)
            puts "now we are back in the method"
        end

        # calling this method with a block:
            yielding do |i|
                puts i * 2
            end

        # delivers this response:
            # the program is executing the code inside the method
            # 4
            # now we are back in the method
            # => nil 

    # when would we use `yield` in the real world?
        # yield can be used for creating a customized version of an iterator like each
    # why would we use `yield` rather than calling a method?

        # here's how we could refactor our yielding method to use a method call instead of the `yield` keyword:
        def yielding_without_yield
            puts "the program is executing the code inside the method"
            multiply_by_2(2)
            puts "now we are back in the method"
        end

        def multiply_by_2(num)
            puts num * 2
        end

        # this is a valid approach, and the difference mostly lies in the design of our code. The `yield` keyword lets us execute any code we'd like inline, whereas when using the method approach, all method we will invoke need to be defined separately.
        # could we use this method approach to build the each method?

        def eaching(array)
            i = 0
            while i < array.length
                printing_each_element(array[i])
                i = i + 1
            end
            array
        end

        def printing_each_element(element)
            puts "printing the element #{element}"
        end

        eaching([1,2,3])
        # doing something with the element 1
        # doing something with the element 2
        # doing something with the element 3
        #=> [1, 2, 3] 

        # this works for printing each element, but what if we want to do something else with each element?
        # we will have to define another method that accomplishes that behavior.
        # this approach is not incorrect. it is a matter of design and composition.
        # test out the approaches in your code and see what feels more efficient.