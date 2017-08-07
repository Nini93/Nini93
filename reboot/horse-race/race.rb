def display_horses(horses_names)
  return horses_names.each_with_index{|horse, index| puts "#{index +1}- #{horse}"}
end
