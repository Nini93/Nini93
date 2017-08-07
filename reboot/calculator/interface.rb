#calculator
#ask user a number
#store it in a variable
#ask a second number
#store it in a variable compute the sum of the 2 numbers
#display the result

require_relative "calculator.rb"

answer =""
first_number = 0
until answer == "OFF"
  puts "Enter a first number"
  print ">"
  first_number = gets.chomp.to_f

  puts "choose opération [+], [-], [/], [*]"
  print ">"
  operator = gets.chomp

  puts "Enter a second number"
  print ">"
  second_number = gets.chomp.to_f

  result = calculate(first_number, second_number, operator)
  puts "the result is #{result}" unless result == nil
  puts "AC / OFF"
  print ">"
  answer = gets.chomp
end
puts "Goodbye"





