require "csv"
require_relative "csv_data"
class CsvReader
  attr_reader :data
  def initialize
    @data = []
  end
  def read_in_csv_data(file)
    CSV.foreach(file, headers: false) do |row|
      @data << CsvData.new(row[0],row[1],row[2])
    end
  end
end
      
    
