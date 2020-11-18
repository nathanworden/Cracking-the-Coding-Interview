# Write a method to replace all spaces in a string with '%20". You may assume that the string has sufficient space at the end to hold the additional characters, and that you aregiven the true length of the string.

def urlify(str)
  str.gsub(' ', '%20')
end

p urlify('Mr John Smith') == "Mr%20John%20Smith"
p urlify('Nathan Mark Worden') == "Nathan%20Mark%20Worden"
p urlify('Daniel K Worden') == "Daniel%20Worden"