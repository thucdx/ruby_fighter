class ShyColleague
  def shy_colleage(plaintext, shift)
    cipher = ''
    plaintext.each_char do |c|
      if 'a' <= c && c <= 'z'
        cipher << ((c.ord - 'a'.ord - shift + 26) % 26 + 'a'.ord).chr
      else
        cipher << c
      end

    end
    cipher
  end
end