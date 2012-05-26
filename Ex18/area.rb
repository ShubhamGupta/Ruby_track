class Area
  def area(*params)
    (22/7.0)*params[0] if params.size==1
    params.reduce(:*) if params.size>1
  end
end
a = Area.new
puts a.area(2,4)
