# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#


def word_unscrambler(str, words)
    arr=[]
    words.each do |element|
     arr<<element if element.split(//).sort==str.split(//).sort
    end
    return arr
end

puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
