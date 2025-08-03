       Identification Division.
       Program-Id. SUMEVEN.
       Data Division.
       Working-Storage Section.
       01  filler                   packed-decimal.
           05  integer-value        pic s9(05) value zero.
           05  sum-of-even-integers pic s9(05) value zero.
       01  sum-for-display          pic ZZZZ9.

       Procedure Division.
           perform sum-values
               varying integer-value from zero by 2
               until integer-value > 100
           move sum-of-even-integers to sum-for-display
           display "Result: " sum-for-display
           goback
           .
       sum-values.
           add integer-value to sum-of-even-integers
           .
