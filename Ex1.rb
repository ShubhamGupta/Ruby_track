puts "Please enter a string.\n"
str = gets.chomp.downcase
char_hash=Hash.new(0) #Initially empty hash
str.each_char do |c| 
  char_hash[c] += 1
end
puts char_hash