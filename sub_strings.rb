def substring(str, dictionary)
    results = {}
    str.downcase!
    dictionary.each { |word| 
        if str.include?(word)
            results[word] = str.scan(word).count
        end
    results
    }
end