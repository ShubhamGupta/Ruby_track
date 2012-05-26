def prime n
(1..n).each do |num|
flag=0
(2..(Math.sqrt(num)).ceil).step(1){|n|
flag=1 if num%n ==0
}
print "#{num} , " if flag==0
end
end
prime 100
