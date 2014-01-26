#opens the arguement variable
filename = ARGV.first
#sign that would show at the beginning of the user response
prompt = "> "
#opens file in brackets
txt = File.open("ex15_sample.txt")
#displays the file contents
puts "Here's your file: #{filename}"
puts txt.read()
#asks user to redefine file 
puts "I'll also ask you to type it again:"
print prompt
#extracts users input as a string
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)
#displays contents of redefined file
puts txt_again.read()

