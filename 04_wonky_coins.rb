# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
def wonky_coins(n)

    if n==0
         return 1
    else
        coins=[n/2, n/3, n/4]
        count=coins.count
    end

    coins.each  do |element|
        count+=wonky_coins(element) if element>0
        count-=1 if element>0
    end

    return count


end

puts wonky_coins(4)