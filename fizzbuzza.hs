--The “fizzbuzz” game is a common interview question for programming jobs: Print the natural numbers 
--starting with 1 in increasing order. 
--If the number is divisible by three, print "fizz" instead of the number. 
--If the number is divisible by five, print "buzz" instead of the number. 
--If the number is both divisible by three and by five, print "fizzbuzz" instead of the number.
--During interviews, the discussion usually goes into the direction how to write the code 
--in such a way that it can be easily extended, which then often leads to discussions   
--about trade-offs between different possible solutions. We are not going into these details here.
--a) Write a Haskell function fizzbuzz :: Integer -> String that takes a positive integer and 
--returns the number rendered as a string or one of the strings "fizz", "buzz", or "fizzbuzz", 
--following the rules defined above.
--b) Using foldr, write a simple expression that returns the fizzbuzz sequence as a 
--list of strings for the numbers in the range 1 to 16. 
--Do not use list comprehensions or other higher order functions or lambda functions.

fizzbuzz :: Integer -> String
fizzbuzz n | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz"
           | n `mod` 3 == 0 = "fizz"
           | n `mod` 5 == 0 = "buzz"
           | otherwise        = show n
