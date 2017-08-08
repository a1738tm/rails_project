class Quiz < ActiveRecord::Base

  def get_quizzes(count)
    max = Quiz.maximum(:id)
    list = []

    # 希望したクイズの個数よりデータベースの件数が少ない場合はcountを修正
    if max < count then
      count = max
    end

    while list.length < count do
      id = (Random.rand * max).floor + 1
      if not list.include?(id) then
        list.push(id)
      end
    end
    return list
  end

  def get_quiz(id)
    data = {}
    quizzes = Quiz.where(id: id)
    quizzes.each do |quiz|
      data[:question] = quiz[:question]
      data[:options] = [quiz[:option1], quiz[:option2], quiz[:option3], quiz[:option4]]
      data[:answer] = quiz[:answer].to_s
    end
    return data
  end

end
