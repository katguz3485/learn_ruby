#write your code here
def echo(word)
  "#{word}"
end

def shout(word)
  "#{word}".upcase
end

def repeat(word, c = 2)
  c.times.collect {word}.join(' ')
end

def start_of_word(word, num)
  word[0..num - 1]
end

def first_word(word)
  word.split.first

end

def titleize(string)

  words = string.split(' ')
  words.each do |x|
    x.capitalize! unless(words.index(x)>0 && (x =='and' || x =='the'|| x =='over'|| x =='in'|| x =='a'))
  end
  words.join(' ')
end

def titleize2(title_sentence)
  # Capitalize the 1st word.
  title_sentence.capitalize!
  words_no_cap = ['and', 'or', 'the', 'over', 'to', 'the', 'a', 'but']
  phrase = title_sentence.split(' ').map {|word|
    if words_no_cap.include?(word)
      word
    else
      word.capitalize
    end
  }.join(' ')
  phrase
end