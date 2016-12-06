require 'caesar_cipher'

puts "Enter phrase"
phrase = gets.chomp

if (phrase.empty?) 
  puts "Empty phrase. Exiting..."
  exit
end

puts "Enter shift factor"
shift = gets.chomp.to_i

if (shift < 0 || shift > 26) 
  puts "Bad shift factor " + shift.to_s + ". Exiting..."
  exit
end

puts "Phrase: " + phrase
puts "Shift factor: " + shift.to_s
puts "Shifted result is:" + caesar_cipher(phrase, shift)