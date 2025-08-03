sum_even = (0..100)
             .map { |x| x.even? ? x : 0 }
             .reduce(0) { |sum, x| sum + x }

puts sum_even
