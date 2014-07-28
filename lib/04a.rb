require 'set'

def uniq_subs(string)
  uniqs = Set.new

  (0...string.length).each do |start_i|
    (start_i...string.length).each do |end_i|
      substr = string[start_i..end_i]
      uniqs << substr
    end
  end

  uniqs.to_a
end

def uniq_subs_solution(str)
  subs = {}

  str.length.times do |i|
    (i...str.length).each do |j|
      subs[str[i..j]] = true
    end
  end

  subs.keys
end

def max_sub_sum_solution(arr)
  max = 0
  max_l = 0
  max_r = 0
  current_max = nil
  left = 0

  arr.size.times do |i|
    current_max += arr[i]

    if current_max < 0
      left = i + 1
      current_max ||= arr[i]
    elsif current_max > max
      max = current_max
      max_l, max_r = left, i
    end
  end

  arr[max_l..max_r]
end

def max_sub_sum(numbers)
  best_array, best_sum = [], 0

  numbers.each_index do |start_i|
    (start_i...numbers.length).each do |end_i|
      subarray = numbers[start_i..end_i]
      sub_sum = subarray.inject(:+)
      best_array, best_sum = subarray, sub_sum if sub_sum > best_sum
    end
  end

  best_array
end

# p max_sub_sum_solution([5, 2, 3, -4, 0, -7, 1]) # => [5, 2, 3]
# p max_sub_sum_solution([5, -5]) # => [5]
# p max_sub_sum_solution([-11, -5, -5, -10]) # =>
# p max_sub_sum([5, 2, 3, -4, 0, -7, 1]) # => [5, 2, 3]
#
# >> [5, 2, 3]
# >> [5]
# >> [-11]
# >> [5, 2, 3]
