dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  string = string.downcase
  dictionary.each do |word|
    count = string.scan(word).length
    result[word] += count if count > 0
  end
  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)