# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats?(year)
      year=year.to_s.split("")
      year==year.uniq
end


def no_repeats(year_start, year_end)
   years=[]
   (year_start..year_end).each {|i|years << i if no_repeats?(i)}
   years
end


puts no_repeats(1980, 1987)