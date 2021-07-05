#  1. Use a nested loop to convert an array of number pairs into a single flattened array.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].

nums = [[1, 3], [8, 9], [2, 16]]
new_nums = []

nums.each do |x, y|
  new_nums << x
  new_nums << y
end

p new_nums

#  2. Use a nested loop with two arrays of strings to create a new array of strings with each string combined.
#     For example, ["a", "b", "c"] and ["d", "e", "f", "g"] becomes ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"].

letters1 = ["a", "b", "c"]
letters2 = ["d", "e", "f", "g"]
new_letters = []

letters1.each do |letter1|
  letters2.each do |letter2|
    new_letters << letter1 + letter2
  end
end

p new_letters

#  3. Use a nested loop with one array of strings to create a new array that contains every combination of each string with every other string in the array.
#     For example, ["a", "b", "c", "d"] becomes ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"].

set = ["a", "b", "c", "d"]
index = 0
final = []

set.each do |z|
  while index < set.length
    if z != set[index]
      final << z + set[index]
    end
    index += 1
  end
  index = 0
end

p final

#  4. Use a nested loop to find the largest product of any two different numbers within a given array.
#     For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.

numbers = [5, -2, 1, -9, -7, 2, 6]
max = numbers[0] * numbers[1]
index = 0

numbers.each do |n|
  while index < numbers.length
    if n != numbers[index]
      prod = n * numbers[index]
      if prod > max
        max = prod
      end
    end
    index += 1
  end
  index = 0
end

p max

#  5. Use a nested loop to compute the sum of all the numbers in an array of number pairs.
#     For example, [[1, 3], [8, 9], [2, 16]] becomes 39.

nest = [[1, 3], [8, 9], [2, 16]]
total = 0

nest.each do |a, b|
  total += a + b
end

p total

#  6. Use a nested loop with two arrays of numbers to create a new array of the sums of each combination of numbers.
#     For example, [1, 2] and [6, 7, 8] becomes [7, 8, 9, 8, 9, 10].

trees1 = [1, 2]
trees2 = [6, 7, 8]
last = []

trees1.each do |tree1|
  trees2.each do |tree2|
    last << tree1 + tree2
  end
end

p last

#  7. Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
#     For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].

branches = [2, 8, 3]
prods = []
index = 0

branches.each do |w|
  while index < branches.length
    prods << w * branches[index]
    index += 1
  end
  index = 0
end

p prods

#  8. Use a nested loop to find the largest sum of any two different numbers within an array.
#     For example, [1, 8, 3, 10] becomes 18.

parts = [1, 8, 3, 10]
max_sum = parts[0] + parts[1]
index = 0

parts.each do |p|
  while index < parts.length
    if p != parts[index]
      whole = p + parts[index]
      if whole > max_sum
        max_sum = whole
      end
    end
    index += 1
  end
  index = 0
end

p max_sum

#  9. Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#     For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

nums = [2, 5, 3, 1, 0, 7, 11]
tens = []
index = 0
result = false

if result == false
  nums.each do |y|
    while index < nums.length
      if y != nums[index] && y + nums[index] == 10
        tens << y
      end
      index += 1
    end
    index = 0
  end
  if tens != nil
    result = true
  end
end

p result

# 10. Use a nested loop to convert an array of string arrays into a single string.
#     For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".

words = [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]]
total = ""
index = 0

words.each do |set|
  while index < set.length
    total += set[index]
    index += 1
  end
  index = 0
end

p total
