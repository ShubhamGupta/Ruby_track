str = "This is a staztement. fggfdgfGFDGDG gfgFdgfFDgDgGFgDgfD"


puts lows = (str.enum_for(:scan,/[a-z]/).map { Regexp.last_match.begin(0) }).size
puts caps = (str.enum_for(:scan,/[A-Z]/).map { Regexp.last_match.begin(0) }).size
puts digs = (str.enum_for(:scan,/\d/).map { Regexp.last_match.begin(0) }).size
