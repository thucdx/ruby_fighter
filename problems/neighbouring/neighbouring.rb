class Neighbouring

  def neighbouring(s1, s2)
    h1 = Hash.new(0)
    h2 = Hash.new(0)

    x = -> (str, h) {
      str.split('').each { |c| h[c] += 1 }
    }

    x.call(s1, h1)
    x.call(s2, h2)

    common = 0
    (h1.keys.to_a).push(h2.keys.to_a).each do |k|
      common += [h1[k], h2[k]].min
    end

    s1.length + s2.length - 2 * common
  end
end