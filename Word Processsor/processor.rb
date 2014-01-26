def readFile(file)
  open_file = File.open(file)
  file = open_file.read
  open_file.close()
  file
end

def character_count(text)
  puts text.length
end

def line_number(text)
  text.lines.count
end

def word_count(text)
  text.split(" ").count
end

def character_count_nospace(text)
  text.delete(" ").length
end

def sentence_count(text)
  text.split(".").count
end

def paragraph_count(text)
  text.split("\n\n").count
end

def av_num_of_words_per_sentence(text)
  word_count(readFile("sample.txt"))/sentence_count(readFile("sample.txt"))
end
 
def av_num_of_sent_per_par(text)
  sentence_count(readFile("sample.txt"))/paragraph_count(readFile("sample.txt"))
end

def occurence_of_special_words(text)
  that = text.scan("that").count.to_f
  are = text.scan("are").count.to_f
  o = text.scan("or").count.to_f
  ((that + are + o)/word_count(text))*100
end  


print "Number of characters: "
puts character_count(readFile("sample.txt"))
print "Number of words: "
puts word_count(readFile("sample.txt"))
print "Number of char not spaces: "
puts character_count_nospace(readFile("sample.txt"))
print "Number of lines: "
puts line_number(readFile("sample.txt"))
print "Number of sentences:"
puts sentence_count(readFile("sample.txt"))
print "Number of paragraphs:"
puts paragraph_count(readFile("sample.txt"))
print "Average number of words per sentence:"
puts av_num_of_words_per_sentence(readFile("sample.txt"))
print "Average number of sentences per paragraph:"
puts av_num_of_sent_per_par(readFile("sample.txt"))
print "Occurence of 'are','or','that':"
puts occurence_of_special_words(readFile("sample.txt"))

p readFile("sample.txt")

