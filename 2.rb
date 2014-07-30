#!/home/kneejah/.rbenv/shims/ruby

fiboHash = {}

def fibo(num, hash)

    if hash.key?(num)
        return hash[num]
    end

    if num < 2
        hash[num] = num
        return num
    end

    val = fibo(num - 1, hash) + fibo(num - 2, hash)
    hash[num] = val
    return val
end

sum = 0
currVal = 0

while (currFib = fibo(currVal, fiboHash)) < 4000000
    print currVal.to_s + " -> " + currFib.to_s + "\n"
    currVal += 1

    if currFib % 2 == 0
        sum += currFib
    end

end

print "sum -> " + sum.to_s + "\n"