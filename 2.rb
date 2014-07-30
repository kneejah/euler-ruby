#!/home/kneejah/.rbenv/shims/ruby

class MyFibo
  def initialize()
    @fiboHash = {}
  end

  def getVal(num)

    if @fiboHash.key?(num)
      return @fiboHash[num]
    end

    if num < 2
      @fiboHash[num] = num
      return num
    end

    val = self.getVal(num - 1) + self.getVal(num - 2)
    @fiboHash[num] = val
    return val

  end

end

myFibo = MyFibo.new

sum = 0
currVal = 0

while (currFib = myFibo.getVal(currVal)) < 4000000
  print currVal.to_s + " -> " + currFib.to_s + "\n"
  currVal += 1

  if currFib % 2 == 0
      sum += currFib
  end
end

print "sum -> " + sum.to_s + "\n"