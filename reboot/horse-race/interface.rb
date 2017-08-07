# Pseudo-code:
# 1. Print welcome
# 2. Faire un array avec tous les  horses 🐴
# 3. Bet :
# => Demander à l'uilisateur de choisir un cheval pour son pari
# => le storer dans une variable
# 4. Run the race 🐴 : loop on 4 laps
# shuffle arrays horses
#iterate on horses
#display position and name
# 5. Afficher les résultats intermédiares après les tours 1, 2, 3
# 6. A la fin du 4ème tour, afficher le gagant et dire à l'utilisateur s'il a gagné ou perdu

require_relative "race.rb"
puts "Welcome ! "
horses = ["Tempête", "Tornado Melenchon", "Reactor 5000", "Brocéliande du poitou", "Bouboule"]
display_horses(horses)
puts "what is your bet? (1-5)"
index = gets.chomp.to_i - 1
bet = horses[index]
puts "you bet on #{bet}"
# j'utilise l'itérateur until, mais on peut aussi utiliser l'itérateur times :
# 4.times do |lap|
# après le code est le même
loops = 0
until loops == 4
  result = horses.shuffle
  puts "Result loop #{loops + 1} :"
  display_horses(result)
  loops +=1
  sleep 2
end


puts "The winner is #{result[0]}"
if result[0] == bet
  print "Congratulations, you win"
else
  puts "Sorry, you loose"
end

