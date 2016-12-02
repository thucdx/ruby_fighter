class FoosballTournament
  def foosball_tournament(results)
    team_with_score = Hash.new(0)

    results.each do |match|
      info = match.split(';')

      case info[2]
        when 'draw'
          team_with_score[info[0]] += 1
          team_with_score[info[1]] += 1
        when 'loss'
          team_with_score[info[0]] += 0
          team_with_score[info[1]] += 3
        when 'win'
          team_with_score[info[0]] += 3
          team_with_score[info[1]] += 0
      end
    end

    arr = team_with_score.collect { |k, v| [k, v] }
    arr.sort! {|x, y| [y[1], x[0]] <=> [x[1], y[0]]}
  end
end