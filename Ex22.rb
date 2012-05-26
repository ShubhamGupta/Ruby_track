class Name
  attr_reader :first_name , :last_name
  def initialize first_name,last_name
    begin
      raise "NameIncompleteError" if (first_name.strip == "" || last_name.strip =="")
      raise "NameCapitalizationError" if first_name.capitalize != first_name
      @first_name = first_name
      @last_name = last_name
    rescue
      puts $!
    end  
    def to_s
      "Name : #{first_name} #{last_name}"
    end
  end
end
ram = Name.new "Ram","Kumar"
puts ram
