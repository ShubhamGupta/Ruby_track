loop do
  puts "Please enter a string.(Press q/Q to exit)\n"
  str = gets.chomp.downcase
  break if str ==  'q'
  if  str==str.reverse
    puts "It's a pallindrome"
  else
    puts "Not a pallindrome"
  end
end