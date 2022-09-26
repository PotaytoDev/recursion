# Using iteration, write a method #fibs which takes a number and returns an
# array containing that many numbers from the fibonacci sequence. Using an
# example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

def fibs(number)
  fibonacci_array = Array.new(number)

  fibonacci_array.each_with_index do |_value, index|
    if [0, 1].include?(index)
      fibonacci_array[index] = index
    else
      fibonacci_array[index] = fibonacci_array[index - 2] + fibonacci_array[index - 1]
    end
  end
end

p fibs(8)
