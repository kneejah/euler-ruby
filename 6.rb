#!/home/kneejah/.rbenv/shims/ruby

testNum = 100

def sumOfSquare(number)

  returnVal = 0

  (1..number).each do |val|

    returnVal += val ** 2

  end

  return returnVal

end

def squareOfSums(number)

  returnVal = 0

  (1..number).each do |val|

    returnVal += val

  end

  return returnVal ** 2

end

sum = sumOfSquare(testNum)
square = squareOfSums(testNum)

print "diff is " + (sum - square).abs.to_s + "\n"