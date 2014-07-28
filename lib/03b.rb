def folding_cipher(string)
  alpha = ('a'..'z').to_a
  new_str = ''
  (0...string.length).each do |char_i|
    char_index = alpha.index(string[char_i])
    new_char_index = nil
    if char_index < 13
      new_char_index = char_index + (25 - (char_index * 2))
    else
      new_char_index = char_index + (25 - (char_index * 2))
    end
    new_str << alpha[new_char_index]
  end
  new_str
end

def folding_cipher_solution(str)
  folded_alphabet = Hash[('a'..'z').zip(('a'..'z').to_a.reverse)]
  str.chars.map { |chr| folded_alphabet[chr] }.join
end
