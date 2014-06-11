
require 'rspec'
# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.

#original solution
def nearest_larger(arr, idx)
       j=idx-1
       found=false
       while found==false and j>=0 do
        if arr[j]>arr[idx]
             return j
             found=true
        else
            j=j-1
        end
      end
      j=idx+1
      while found==false and j<arr.length do
      if arr[j]>arr[idx]
             return j
             found=true
        else
            j=j+1
        end
      end     
end
#refacted solution

