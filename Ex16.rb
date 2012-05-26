str = "Can you can a can as a canner can can a can?"
count = 0
str.gsub!(/(can)/i){|x|
  count+=1
  '(can)'
}
puts "#{str} \n Total No Of Occurences : #{count}"
