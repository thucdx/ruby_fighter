class BracketMatch
  def bracket_match(code)
    bracket_pairs = '[](){}<>'
    open_close = Hash.new
    close_open = Hash.new

    (0...bracket_pairs.length).step(2) do |i|
      o = bracket_pairs[i]
      c = bracket_pairs[i + 1]
      open_close[o] = c
      close_open[c] = o
    end

    stack = Array.new
    code.split('').each do |c|
      if open_close.has_key?(c)
        stack.push(c)
      elsif close_open.has_key?(c)
        if stack.empty? || (stack.pop != close_open[c])
          return false
        end
      end
    end

    stack.size == 0
  end
end
