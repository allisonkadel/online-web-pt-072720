def using_while
  levitation_force = 6
  # 1. condition to be met
  # 2. stuff to do while the condition is true
  # 3. how do we meet that condition?

  # In psuedocode:
  # while the levitation_force is less than 10
    # print "Wingardium Leviosa"
    # increment the levitation_force by 1

  while levitation_force < 10
    puts "Wingardium Leviosa"
    levitation_force += 1
    
  # while levitation_force <= 10
  # ^This will print it 5 times, but we need 4!
    
  end
end

# You can run `learn --f-f to only see the first failing test`
# You can run `clear` to clear your terminal