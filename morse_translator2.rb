morse_code=[" ", "./" , "/..." , "/./."]
allowable_letters = [" ", "a" , "b" , "c"]

puts "Please enter a phrase: "
input = gets.chomp.split("")
print input

morse_word = ""

input.each do |letter|
  morse_index = allowable_letters.find_index(letter)
  morse_word = morse_word + morse_code[morse_index]
end

puts morse_word
