def fibs(number)
  fibonacci = []

  (0..number - 1).each do |n|
    fibonacci << if n.zero?
                   0
                 elsif n == 1
                   1
                 else
                   fibonacci.last(2).sum
                 end
  end
  fibonacci
end

def fibs_rec(num)
  raise ArgumentError, 'The number must be a positive integer' if num < 0

  return [] if num == 0
  return [0] if num == 1
  return [0, 1] if num == 2

  seq = fibs_rec(num - 1)

  seq << seq[-2] + seq[-1]

  seq
end

puts fibs(10).join(', ')
puts fibs_rec(10).join(', ')
