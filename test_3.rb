def find_it(words)
    # short
    return words.split.sort_by{ |w| w[/\d/] }.join(' ')
    
    # long
    order = []
    splits = word.split(' ')
    splits.each_index { |k| splits.each { |w| if w.include? "#{k+1}" then order[k] = w.sub! "#{k+1}", '' end }}
    return order.join(' ')
end

puts find_it('is2 Thi1s T4est 3a')
