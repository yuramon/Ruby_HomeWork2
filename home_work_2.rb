# frozen_string_literal: true

# Convert string 'var_test_text' in 'varTestText'
def convert_string(string)
  new_array = []
  array_of_split_string = string.split('_')
  new_array.push(array_of_split_string[0].to_s)
  i = 1
  until i >= array_of_split_string.length
    new_array.push(array_of_split_string[i].to_s.capitalize)
    i += 1
  end
  new_array.join
end

puts convert_string('var_test_text')

# Convert string 'ФЫВА олдж' to reverse string АВЫФ ждло'
def reverse_string(string)
  new_array = []
  array_of_split_string = string.split(' ')
  i = 0
  until i >= array_of_split_string.length
    new_array.push(array_of_split_string[i].to_s.reverse)
    i += 1
  end
  new_array.join(' ')
end

puts reverse_string('ФЫВА олдж')

# Output numbers which contain 3
def output_numbers_with_three(array_of_numbers)
  new_array = []
  i = 0
  until i >= array_of_numbers.length
    new_array.push(array_of_numbers[i]) if array_of_numbers[i].to_s.include? '3'
    i += 1
  end
  new_array.join(' ')
end

puts output_numbers_with_three([342, 55, 33, 123, 66, 63, 9, 33])

# Output count of number 3 in array
def output_count_of_three(array_of_numbers)
  array_of_numbers.to_s.count('3')
end

puts output_count_of_three([342, 55, 33, 123, 66, 63, 9, 33])
