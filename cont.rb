require "sinatra"
require "sinatra/reloader" if development?

class Caesar
  def caesar_cipher(str, key)
    hash = Hash[('a'..'z').map.with_index.to_a]
  
    (0..str.length - 1).each do |item|
      letter = str[item].downcase
  
      next if hash[letter].nil?
  
      new_index = hash[letter] + key.to_i
  
      new_index -= 26 if new_index >= 26
  
      new_value = hash.key(new_index)
  
      new_value = new_value.upcase if str[item] === str[item].capitalize
  
      str[item] = new_value
    end
    return str
  end
end

get "/" do
  input = params["cipher"]
  input2 = params["offset"]
  erb :index, :locals => {:input => input, :input2 => input2}
end