##
# The Microwave program takes the amount of food in a micro wave amd calculates
# how long the food will take
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-26
# frozen_string_literal: true

# Asks user for input
puts 'Enter the number to the correlating food item you want to microwave (Italian Sub 1, Pizza 2, Soup 3):'

# Gets the user input
foodnumber = gets.chomp

# Asks user for input
puts 'Enter the how many of the food items you would like to microwave (between 1 and 3):'
# Gets the user input
foodamount = gets.chomp

begin
  # Converts the input into a int
  foodnumber = foodnumber.to_i
  foodamount = foodamount.to_i

  # sets the cooktime to zero
  cooktime = 0

  case foodnumber
  # Determines whether the input meets the parameters
  when 1

    # sets the cooktime to the sub setting
    cooktime += 60

  when 2

    # sets the cooktime to the pizza setting
    cooktime += 45

  when 3

    # sets the cook time to the soup setting
    cooktime += 105

  else

    # if anything else is entered print this
    puts 'Please enter a valid food number'

  end

  # checks if the inputed values meet the parameters, and the
  # cooktime must not equal zero
  if foodamount >= 1 && foodamount <= 3 && cooktime != 0

    # calculates how long it will be in the microwave
    cooktime += 0.5 * (foodamount - 1) * cooktime

    # prints the cooktime
    puts
    puts "Your food will take #{cooktime} seconds to cook."
    puts
    puts 'Done'

  else
    # if these parameters are not met, ask them to meet them
    puts 'Please enter a valid food amount'
  end
rescue StandardError
  # If the input cannot be converted into a float, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end
