# string builder

word_arr = ["hello", "my", "little", "friend"]

def join_words(word_arr)
  sentence = ""
  word_arr.each do |word|
    sentence += word + ' '
  end
  sentence[0..-2]
end


p join_words(word_arr)