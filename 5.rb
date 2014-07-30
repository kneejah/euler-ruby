#!/home/kneejah/.rbenv/shims/ruby
require 'prime'

def primeFactors(num)
  factors = {}
  currentNum = num

  (1..num).each do |val|

    if Prime.prime?(val)

      while currentNum % val == 0 && currentNum > 1

        if factors.key?(val)
          factors[val] += 1
        else
          factors[val] = 1
        end

        currentNum /= val
      end

    end

  end

  return factors

end

minFactors = {}
endValue = 1

(1..20).each do |val|

  currFactors = primeFactors(val)

  currFactors.each do |key, value|

    if !minFactors.key?(key)
      minFactors[key] = value
    elsif value > minFactors[key]
      minFactors[key] = value
    end

  end

end

minFactors.each do |key, value|

  value.times do
    endValue *= key
  end

end

print "min number divisible by 1..20 is " + endValue.to_s + "\n"