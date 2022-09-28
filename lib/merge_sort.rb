def merge_sort(array)
  return array if array.length == 1

  left_array = merge_sort(array[0...(array.length / 2)])
  right_array = merge_sort(array[(array.length / 2)..-1])

  left_index = 0
  right_index = 0
  merged_array = []

  until left_index == left_array.length || right_index == right_array.length
    if left_array[left_index] < right_array[right_index]
      merged_array.push(left_array[left_index])
      left_index += 1
    else
      merged_array.push(right_array[right_index])
      right_index += 1
    end
  end

  if left_index == left_array.length
    until right_index == right_array.length
      merged_array.push(right_array[right_index])
      right_index += 1
    end
  else
    until left_index == left_array.length
      merged_array.push(left_array[left_index])
      left_index += 1
    end
  end

  merged_array
end

3.times do
  array = Array.new(rand(20) + 1)
  array.each_with_index { |value, index| array[index] = rand(100)}
  puts '-----------------------------------------'
  puts "Original array: #{array}"
  puts "Sorted array: #{merge_sort(array)}"
end
