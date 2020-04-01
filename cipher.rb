def caesar_cipher(str, key)
  alphabet = ("a".."z").to_a
  str_l = str.downcase
  str_arr = str_l.split("")
  index = 0
  str_arr_index = 0
  new_match = []

  while index != 26
    if str_arr[str_arr_index] == alphabet[index] && str_arr_index <= str_arr.length
      new_match << alphabet[index - key]
      index = 0
      str_arr_index += 1
    else 
      index += 1
    end
  end
  puts "Caesar cipher of #{str_l} is #{new_match.join("")}"
  return new_match.join("")
end

caesar_cipher("string", 3)