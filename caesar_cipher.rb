def cipher (str, shift=0)
  alphabet = ("a".."z").to_a
  up = false
  cryptic_word = ''

  str = str.split('')

  str.each do |letter|
    if letter == letter.upcase
      up = true
      letter = letter.downcase
    end
    
    if alphabet.include?(letter)
      a_index = alphabet.index(letter)
      s_index = (a_index + shift) % 26
      s_alpha = alphabet[s_index]
    else
      s_alpha = letter
    end

    if up == true
      s_alpha = s_alpha.upcase
      up = false
    end
      
    cryptic_word = cryptic_word + s_alpha
  end

    str = str.join('')
    puts "'#{str}' is now '#{cryptic_word}'"

end

puts "Enter a string you would like to encrypt:"
str = gets.chomp
puts "Enter a value you would like to shift the string by:"
shift = gets.chomp.to_i

cipher str, shift