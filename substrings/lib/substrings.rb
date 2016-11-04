# phrase is a phrase
# dictionary is an array of valid substrings
# returns a hash listing each substring (case insensitive) and how many times it was found
def substrings(phrase, dictionary)
  words = phrase.split(/\W+/)
  
  counts = Hash.new(0)
  
  words.each do |w|
    dictionary.each do |d|
      if w.downcase.include?(d.downcase)
        counts[d] += 1
      end
    end
  end
  
  return counts
end