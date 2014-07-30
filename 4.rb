#!/home/kneejah/.rbenv/shims/ruby

def palindrome?(str)
  return str == str.reverse
end

maxVal = 0

999.downto(1).each do |i|

  999.downto(1).each do |j|

    if palindrome?((i * j).to_s)

      if i * j > maxVal
        maxVal = i * j
      end

    end

  end

end

print "max palindrome of 999x999: " + maxVal.to_s + "\n"