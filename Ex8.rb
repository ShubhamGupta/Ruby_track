class Array
  def pow n
    self.length.times do |idx|
      self[idx] = self[idx] ** n
    end
  end
end
arr=[3,5,7]
arr.pow 2
puts arr
