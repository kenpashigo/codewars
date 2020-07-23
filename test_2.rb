def find_it(seq)
    counts = Hash.new(0)
    seq.each { |name| counts[name] += 1 }
    counts.each { |key, value| if (value % 2) != 0 then return key end }
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
puts find_it([10])
puts find_it([1,1,1,1,1,1,10,1,1,1,1])
