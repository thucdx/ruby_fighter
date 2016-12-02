class StairsGain
  def stairs_gain s
    d = []
    d[0] = 0
    d[1] = s[0] == ?y ? 1 : -2
    (2..s.size).each { |i|
      a = s[i - 1] == ?y ? 1 : -2
      b = s[i - 2] == ?y ? 2 : -1
      d[i] = [d[i - 2] + a + b, d[i - 1] + a].max
    }
    d[s.size]
  end

end