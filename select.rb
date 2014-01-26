
def picker(range)
  range.to_a.select { |num|  (num % 3 == 0 || num % 5 == 0) && num != 0 }
end


def accumulator(array)
  p array.inject { |lynn, n| lynn + n }
end

accumulator(picker(0..1000))

