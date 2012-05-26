def factorial n
  begin
    raise "NumberLessThanZeroError" if n < 0
    return 1 if n==0
    range = (1..n).to_a
    fact = range.reduce(:*)
  rescue 
    puts "ERROR : #{$!}"
  end
end
puts factorial 5
