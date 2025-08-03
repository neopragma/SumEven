sum_even = (0..100)
             .select(&:even?)
             .reduce(:+)

puts sum_even
