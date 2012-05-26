class Intrest 
  attr_accessor :rate, :amount, :year
  def simple_intrest
    (@amount * @year * @rate)/100
  end
  def compound_intrest
    @amount * ((1+ (@rate/100.0))** @year)-@amount
  end
end
puts "Enter the amount :"
amt=gets
puts "Enter No of years :"
time=gets
obj = Intrest.new.tap do |a|
  a.rate =10
  a.amount=amt.to_i
  a.year = time.to_i
end
puts obj.compound_intrest
puts ("Difference B/W SI and CI is : #{obj.compound_intrest - obj.simple_intrest}")

