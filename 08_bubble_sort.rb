# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)
    temp=0
    for i in (0..arr.length-1) 
         for j in (1..arr.length-1-i) 
               if arr[j-1]>arr[j]
                    temp=arr[j]
                    arr[j]=arr[j-1]
                    arr[j-1]=temp
                end
         end
     end
    arr
end

puts bubble_sort([1,2,3,4])
