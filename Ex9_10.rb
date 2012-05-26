class Array
  def to_hash
    hash = Hash.new
    self.length.times do|idx|
      if !hash[self[idx].to_s.split('').size]
        hash[self[idx].length]=Array.new()
      end
      hash[self[idx].to_s.split('').size]<< self[idx]
    end
    hash
  end
end
def inject hash_obj
  part_hash = Hash.new
  part_hash['even'],part_hash['odd'] = hash_obj.partition{|idx,elem| idx%2==0}
  part_hash
end



arr = ["abc",'def','adsfdg',123,'abcfdgsajaka']
h=arr.to_hash
puts inject h






