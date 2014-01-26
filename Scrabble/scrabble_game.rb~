 def scrabble_words(file)
  open_file = File.open(file)
  text = open_file.read
  open_file.close()
  text
 end
 
 #make all the words in words.rb an array
 def array_of_words
  scrabble_words("words.txt").split 
 end
 
#make all the words in scrabble_words.rb an array
 def array_of_scrabble_words
  scrabble_words("scrabble_words.txt").split
 end
 
 #find the difference in words of both arrays
 def find_difference(array_scrabble_words, array_words)
  array_scrabble_words - array_words
 end
 
 puts find_difference(array_of_scrabble_words, array_of_words)
 
 
