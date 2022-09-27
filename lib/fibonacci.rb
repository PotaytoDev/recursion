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

# Now write another method #fibs_rec which solves the same problem recursively.

def fibs_rec(number, fibonacci_array = [0, 1])
  fibs_rec(number - 1, fibonacci_array) if number > 3

  fibonacci_array << fibonacci_array[number - 3] + fibonacci_array[number - 2]
end

p fibs(8)
p fibs_rec(8)
