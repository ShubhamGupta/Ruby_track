def pascal n
  curr_row=[1] #begining with row 1
  while curr_row.length < n+2
    print "#{curr_row} \n"
    curr_row = yield curr_row
  end
end
pascal (6) {|row|
  curr_row=Array.new
  arr_idx=-1
  (row.size-1).times do
    arr_idx+=1
    curr_row << row[arr_idx]+row[arr_idx+1]
  end
  curr_row.insert 0,1
  curr_row.push 1
}
