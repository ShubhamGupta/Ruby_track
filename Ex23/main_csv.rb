require_relative "csv_reader"
reader = CsvReader.new
des =[]
reader.read_in_csv_data("data");
reader.data.each do |data|
  des<< data.designation
end
des.uniq!
dev =[]
des1=[]
arr = reader.data
dev,des1=reader.data.partition{|elem| elem.designation.strip=='Developer'}

 File.open("abc.txt", "a") do |file|
    des.each{|post|
    file.puts post  
      arr.each{|elem|
        if elem.designation == post
          file.puts "#{elem.name}, #{elem.emp_id}"
        end
      }
    }
    
    end
  

