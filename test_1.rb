def is_valid_walk(walk)
    return false unless walk.size == 10

    pos = [0, 0]
    mov = {
        'n' => [1, 1],
        's' => [1, -1],
        'w' => [0, -1],
        'e' => [0, 1]
    }

    for movement in walk do
        pos[mov[movement][0]] += mov[movement][1]
    end
    return pos == [0, 0]
end

puts is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
puts is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])
puts is_valid_walk(['w'])
puts is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])
