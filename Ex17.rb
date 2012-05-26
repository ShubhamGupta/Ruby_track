class MyTime
  attr_accessor :hour, :min, :sec
  def initialize str
    @hour, @min, @sec = str.split(':')
  end
  def self.time_valid? t
    if /^(([01]?[0-9])|([2][0-3])):([0-5]?\d:([0-5]?\d)$)/ =~ t #/^(([01][0-9])|([2][0-3])):([0-5]\d:([0-5]\d)$)/ =~ t
      true
    else
      false
    end
  end
  def add_time t2
    day =0
    hr1=0
    min1=0
    sec1 = (@sec.to_i + t2.sec.to_i)
    min1 = @min.to_i + t2.min.to_i
    hr1 = @hour.to_i + t2.hour.to_i
    if sec1>59
      min1+=1  
      sec1-=60
    end
    if min1>59
      hr1+=1  
      min1-=60
    end
    if hr1>23
      day += 1  
      hr1-=24
    end
    hr1>23 ? hr1 =23:nil
    sum_time = MyTime.new "#{hr1}:#{min1}:#{sec1}"
    puts "#{day} day and #{hr1}:#{min1}:#{sec1}"
  end
end
  t1 = '14:40:40'
  t2 = '14:40:40'
  if (MyTime.time_valid?(t1) && MyTime.time_valid?(t2))
    time1 = MyTime.new t1
    time2 = MyTime.new t2
    time1.add_time time2
  else
    puts "Invalid time"
  end
  

