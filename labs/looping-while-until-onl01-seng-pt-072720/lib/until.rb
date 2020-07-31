def using_until
  levitation_force = 6
  # 1. condition to be met
  # 2. stuff to do until the condition is met
  # 3. how do we meet that condition? (altering a counter?)

  # In psuedocode:
  # until the levitation_force is equal to 10
    # print "Wingardium Leviosa"
    # increment the levitation_force by 1

  until levitation_force == 10
    # levitation_force = levitation_force + 1
    puts "Wingardium Leviosa"
    levitation_force += 1
  end
end