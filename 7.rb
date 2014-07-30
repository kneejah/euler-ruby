#!/home/kneejah/.rbenv/shims/ruby
require 'prime'

def nthPrime(num)

  numFound = 0
  currentVal = 1

  while numFound < num

    currentVal += 1

    if Prime.prime?(currentVal)
      numFound += 1
    end

  end

  return currentVal

end

print nthPrime(10001).to_s + "\n"