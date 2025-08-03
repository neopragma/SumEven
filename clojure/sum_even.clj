;; sum_even.clj
(println
  "Result: "
  (reduce + (filter even? (range 0 101))))
