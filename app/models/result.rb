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


end
