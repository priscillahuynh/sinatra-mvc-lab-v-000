class PigLatinizer
  
  def to_pig(phrase)
    words = phrase.split(" ")
    binding.pry
    words.collect {|w| piglatinize(w)}.join(" ")
  end

  def piglatinize(sentence)
    binding.pry
    array = to_pig(sentence)
  end
  
  def new_pig(word)
    letters = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    first = letters[1] 
    second = letters[2] + (letters[3] || "")
    if first.length>0
      "#{second}#{first}ay"
    else
      "#{second}way"
    end
  end
end