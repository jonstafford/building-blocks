
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
