class Fibonacci
  @@a=0
  @@b=1
  def fib(&b)
    c = yield(@@a,@@b) 
    @@a=@@b
    @@b=c
    if c < 1000
      print "#{c}  "
      fib &b
    end
  end
end
obj = Fibonacci.new 
obj.fib do |a,b| 
  a+b
end
