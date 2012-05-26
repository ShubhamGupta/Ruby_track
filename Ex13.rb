def factorial n
  return 1 if n==0
  range = (1..n).to_a
  fact = range.reduce(:*)
end
puts factorial 6
