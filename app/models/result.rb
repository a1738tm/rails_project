class Result < ActiveRecord::Base

  def get_total
    return Result.count
  end

  def get_rank(score)
    s = Result.pluck(:score)
    if s.size != 0 then
      s.push(score)
      rank = s.map { |v| s.count { |a| a > v } + 1 }
      return rank[-1]
    else
      return 1
    end
  end

  def exists(username)
    return Result.exists?(:username => username)
  end

  def register(username, score)
    self.username = username
    self.score = score
    self.save
  end

  def get_ranking
    u = Result.pluck(:username)
    s = Result.pluck(:score)
    r = s.map { |v| s.count { |a| a > v } + 1 }
    ranking = []
    for i in 0..u.length - 1 do
      ranking.push({ :rank => r[i], :username => u[i], :score => s[i] })
    end
    ranking.sort! { |a, b| a[:rank] <=> b[:rank] }
    return ranking
  end

end
