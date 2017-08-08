class Result < ActiveRecord::Base

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

Result.exists?(session[:username])

def get_ranking
  u = Result.pluck(:username)
  s = Result.pluck(:score)
  r = s.map { |v| s.count { |a| a > v } + 1 } 
  ranking = []
  for i in 0..u.length-1 do
      ranking.push([r[i], u[i], s[i]])
  end
  ranking.sort
  return ranking
end

end
