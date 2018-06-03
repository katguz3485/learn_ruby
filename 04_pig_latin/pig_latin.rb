def translate(words)
  s = words.split
  pig_latin = []
  for word in s
    vowel_index = word.index(/[aeiou]/)
    if  vowel_index == 0
      word = word + "ay"
    elsif word.match("qu")
      word.replace word[vowel_index+1..-1] + word[0..vowel_index] + "ay"
    else
      word.replace word[vowel_index..-1] + word[0..vowel_index-1] + "ay"
    end
    pig_latin << word
  end
  return pig_latin.join(" ")
end