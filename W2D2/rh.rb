
require 'byebug'

def sum_to(n)

    if n < 0
        return nil
    end

    return n if n == 0

    n + sum_to(n - 1)

end

def add_numbers(nums_array)

    return nil if nums_array.count == 0
    return nums_array[0] if nums_array.count == 1
    nums_array[0] + add_numbers(nums_array[1..-1])

end

def gamma_fnc(num)

    return nil if num <= 0

    return 1 if num == 1

    (num - 1) * gamma_fnc(num - 1)

end


def ice_cream_shop(flavors, favorite)

    return false if flavors.count == 0 
    return true if flavors[0] == favorite
    ice_cream_shop(flavors[1..-1], favorite)

end


def reverse(str)

    return "" if str.length == 0
        if str.length == 1
            return str
        end
    reverse(str[1..-1]) + str[0]

end