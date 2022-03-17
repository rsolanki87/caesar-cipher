def caesar_encrypt(string, shift)
    string.chars.map(&:ord).map do |i|
      if i.between?(65, 90)
        ((i - 65 + shift) % 26) + 65
      elsif i.between?(97, 122)
        ((i - 97 + shift) % 26) + 97
      else
        i
      end
    end.map(&:chr).join
end

def caesar_decrypt(string, shift)
    string.chars.map(&:ord).map do |i|
      if i.between?(65, 90)
        ((i - 65 - shift) % 26) + 65
      elsif i.between?(97, 122)
        ((i - 97 - shift) % 26) + 97
      else
        i
      end
    end.map(&:chr).join
end

puts caesar_encrypt("hello", 5)
puts caesar_encrypt("What a string!", 5)

puts caesar_decrypt("Mjqqt", 5)