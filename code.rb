def spin_words(text)
  splitted_text = text.split(" ")
  i = 0
  splitted_text.each do |word|
    if word.downcase.gsub(/[^\w\s]/, '').length >= 5
      reverse_splitted_word = word.reverse
      splitted_text[i]= reverse_splitted_word
    end
    i +=1
  end
  p splitted_text.join(" ")
end

spin_words("Hey fellow Le Wagon alumni") # "Hey wollef Le nogaW inmula"
spin_words("Rake it until you make it") # "Rake it litnu you make it"
spin_words("Change your life! learn to code") # "egnahC your life, nrael to code"
