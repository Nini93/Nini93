def calculate (first_number, second_number, operator)
  case operator

  when "+"
    result = first_number + second_number

  when "-"
    result = first_number - second_number

  when "/"
   result = first_numberfdiv(second_number)

  when "*"
    result = first_number * second_number
  else
    puts "wrong operator"
  end
  return result
end
