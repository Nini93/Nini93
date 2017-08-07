# 1. Print Welcome
# 2. Define your store (what items are for sale?)
  # store: a hash with product name as keys and price as values
# 3. Get items from the user (shopping)
  # afficher les produits disponibles
  # itialize cart
  #lui demander quel produit il veut choisir
  #check if product is available
  # check if product is not in the cart
  # store it in the cart
  #encapsulate into a loop
# 4. Print the bill (checkout)
  # itérer through cart
  # find the priceof product in the store
  # les additionner

puts "welcome"
store = {
  "kiwi" => {price: 1.25, stock: 5},
  "banana" => {price: 0.5, stock: 4},
  "mango" => {price: 4, stock: 1},
  "asparagus" => {price: 9, stock: 5},
}
puts
puts "available today :"
store.each {|product, infos| puts "#{product} : #{infos[:price]} (#{infos[:stock]} available)"}
cart = {}
item = ""
until item == "quit"
  puts
  puts "Which item? (or 'quit' to checkout)"
  print ">"
  item = gets.chomp.downcase

  if item != 'quit' && store.include?(item) && !cart.include?(item)
    puts "how many?"
    print ">"
    quantity = gets.chomp.to_i
    if quantity <= store[item][:stock]
      cart[item]= quantity
      store[item][:stock] -= quantity
    else
      puts "Sorry, there's only #{:stock} #{item}s left"
    end
  elsif store.keys.include?(item) == false
    puts
    puts "Sorry this item is not available"
  else cart.include?(item)
    puts
    puts "How many to add?"
    quantity = gets.chomp.to_i
    if quantity <= store[item][:stock]
      cart[item] += quantity
    else
      puts "Sorry, there's only #{:stock} #{item}s left"
    end
  end
end
puts" ________BILL__________"
checkout = 0
cart.each do |item, quantity|
price = store[item][:price]
subtotal = quantity * price
puts
puts "#{item}: #{quantity} x #{price} = #{subtotal}€"
checkout += subtotal
end
puts
puts "TOTAL: #{checkout}€"
puts"____________________"

# a la fin on aurait pu faire
# sum = cart.reduce (0) {|sum, item| sum += store[item]} # le 0 veut dire qu'initialement la somme est à 0



