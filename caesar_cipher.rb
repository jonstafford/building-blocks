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

def caesar_cipher(p, sf)
  result = ""
  p.each_char do |c|
    
    uppercase_letter = false
    lowercase_letter = false
    
    if c.match(/[A-Z]/)
      uppercase_letter = true
    end
    
    if c.match(/[a-z]/)
      lowercase_letter = true
    end
    
    if lowercase_letter || uppercase_letter
      shifted = c.ord + sf
      if (uppercase_letter && shifted > 90) || (lowercase_letter && shifted > 122)
        shifted -= 26
      end
      
      result += shifted.chr
    else
      result += c
    end
    
  end
  
  return result
end

puts "Phrase: " + phrase
puts "Shift factor: " + shift.to_s
puts "Shifted result is:" + caesar_cipher(phrase, shift)