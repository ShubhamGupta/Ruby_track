class MyTime
  attr_accessor :hour, :min, :sec
  def initialize str='00:00:00'
    @hour, @min, @sec = str.split(':')
  end
  def self.time_valid? t
    if /^(([01]?[0-9])|([2][0-3])):([0-5]?\d:([0-5]?\d)$)/ =~ t #/^(([01][0-9])|([2][0-3])):([0-5]\d:([0-5]\d)$)/ =~ t
      true
    else
      false
    end
  end
  def self.add_time *time
    day =0
    time_sum = MyTime.new
    time.size.times do |idx|
    time_sum.sec = time_sum.sec.to_i + time[idx].sec.to_i
    time_sum.min = time_sum.min.to_i + time[idx].min.to_i
    time_sum.hour = time_sum.hour.to_i + time[idx].hour.to_i
    if time_sum.sec>59
      time_sum.min+=1  
      time_sum.sec-=60
    end
    if time_sum.min>59
      time_sum.hour+=1  
      time_sum.min-=60
    end
    if time_sum.hour>23
      day += 1
      time_sum.hour-=24
    end
    end
    puts "#{day} days & #{time_sum.hour}:#{time_sum.min}:#{time_sum.sec}"
  end
end
  t1 = '10:40:40'
  t2 = '20:40:40'
  if (MyTime.time_valid?(t1) && MyTime.time_valid?(t2))
    time1 = MyTime.new t1
    time2 = MyTime.new t2
    time3 = MyTime.new '01:59:59'
    MyTime.add_time time1,time2,time3
  else
    puts "Invalid time"
  end
