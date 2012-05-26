class CsvData
  attr_accessor :name, :emp_id , :designation
  def initialize(name, emp_id, designation)
   @name = name
   @emp_id = emp_id
   @designation = designation
  end
end
