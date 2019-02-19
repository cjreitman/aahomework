require "byebug"

a = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish(array)
  biggest_fish = ""
array.each do |fish1|
  array.each do |fish2|
    if fish1.length > fish2.length
      biggest_fish = fish1
    end
  end
end
return biggest_fish
end

def dom_oc(array)

  return array if array.length == 0

  pivot_array = [array[0]]

  left = array[1..-1].select { |fish|  fish.length < array.first.length    }
  right = array[1..-1].select { |fish|  fish.length > array.first.length    }

  dom_oc(left) + pivot_array + dom_oc(right)
  
end



a.inject do |acc, fish|
  debugger
  if fish.length > acc.length
    fish
  else
    acc
  end
  return acc
end








