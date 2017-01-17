morse_arr=[" ", "./" , "/..." , "/./."]
allowable_letters = [" ", "a" , "b" , "c"]

# lett_hash= Hash[allowable_letters.zip(morse_arr.map {|i| i.split /, /})]
# puts lett_hash

puts "Please enter a phrase: "
input = gets.chomp
i = 0
morse_word = ""

# try treating the string as an array of letters instead
# the_string.each ....

while i < input.length
  puts "allowable_letters[#{i}] is #{allowable_letters[i]}"

  # instead of checking position 0 on the input compared to position 0 of the allowable_letter array...
  # check if the input character is in the list of allowable characters

  morse_index = allowable_letters.find_index(input[i])
  if morse_index != nil
    morse_word = morse_word + morse_arr[morse_index]
  end



  i += 1
end

puts morse_word
