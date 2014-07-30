#!/home/kneejah/.rbenv/shims/ruby
require 'prime'

testNum = 600851475143

endNum = Math.sqrt(testNum).to_i

print "ending at " + endNum.to_s + "\n"

for i in 1..endNum

  if i % 2 != 0 && i % 3 != 0
    if testNum % i == 0
      if Prime.prime?(i)
        print "found " + i.to_s + "\n"
      end
    end
  end

end