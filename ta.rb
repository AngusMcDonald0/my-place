def spin_words(words)
  sentence = words.split
  sentence.each { |word| word.match(/\w{5,}/) ? word.reverse! : word }.join(' ')
end

puts spin_words("Hey fellow Le Wagon alumni") == "Hey wollef Le nogaW inmula"
puts spin_words("Rake it until you make it") == "Rake it litnu you make it"
puts spin_words("Change your life, learn to code") == "egnahC your life, nrael to code"
