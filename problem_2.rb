#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

sequence = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
sequence << sequence[-2] + sequence.last while sequence[-2] + sequence.last <= 4000000
sum = 0
sequence.each { |term| sum += term if term.even? }
p sum
