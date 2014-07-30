#!/home/kneejah/.rbenv/shims/ruby

def is_mult(val)
  return val % 3 == 0 || val % 5 == 0
end

sum = 0

(1..999).to_a.each do |val|
  if (is_mult(val))
    sum += val
  end
end

print "sum: " + sum.to_s + "\n"