alphabet = ("a".."z").to_a

key = -1
until key.positive?
  print "Key: "
  key = gets.chomp.to_i
end

print "plaintext: "
plaintext = gets.chomp

ciphertext = ""

plaintext.each_char do |char|
  downcase_char = char.downcase

  if alphabet.include?(downcase_char)
    char_index = alphabet.index(downcase_char)
    new_index = (char_index + key) % 26
    new_char = alphabet[new_index]

    ciphertext += char == downcase_char ? new_char : new_char.upcase
  else
    ciphertext += char
  end
end

puts "ciphertext: #{ciphertext}"