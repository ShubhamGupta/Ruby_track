class Customer
  attr_reader :name, :account_no, :balance
  @@acc_count=0
  def self.acc_count
      @@acc_count
    end
  def initialize name
    @name = name
    @balance = 1000
    @account_no = @@acc_count+=1 
  end
  def deposit amt
    @balance += amt
  end
  def withdraw amt
    @balance -= amt
  end
end
obj =Customer.new "abc"
puts obj.name
puts obj.account_no
obj.deposit 1000
obj.withdraw 200
puts obj.balance

