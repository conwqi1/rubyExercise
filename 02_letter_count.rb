# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
def letter_count(str)
     counts = {}
     str.each_char do |char|
        next if char==" "
        counts[char] =0 unless counts.include?(char)
        counts[char]+=1	
        end
     counts  
end

puts letter_count("jack")
