# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Result.delete_all
Result.create(username: '回答者A', score: 0)
Result.create(username: '回答者B', score: 10)
Result.create(username: '回答者C', score: 20)
Result.create(username: '回答者D', score: 30)
Result.create(username: '回答者E', score: 40)
Result.create(username: '回答者F', score: 50)
Result.create(username: '回答者G', score: 60)
Result.create(username: '回答者H', score: 70)
Result.create(username: '回答者I', score: 80)
Result.create(username: '回答者J', score: 90)

Quiz.delete_all
Quiz.create(question: '問題1', option1: '選択肢1-1', option2: '選択肢1-2', option3: '選択肢1-3', option4: '選択肢1-4', answer: 1)
Quiz.create(question: '問題2', option1: '選択肢2-1', option2: '選択肢2-2', option3: '選択肢2-3', option4: '選択肢2-4', answer: 2)
Quiz.create(question: '問題3', option1: '選択肢3-1', option2: '選択肢3-2', option3: '選択肢3-3', option4: '選択肢3-4', answer: 3)
Quiz.create(question: '問題4', option1: '選択肢4-1', option2: '選択肢4-2', option3: '選択肢4-3', option4: '選択肢4-4', answer: 4)
Quiz.create(question: '問題5', option1: '選択肢5-1', option2: '選択肢5-2', option3: '選択肢5-3', option4: '選択肢5-4', answer: 1)
Quiz.create(question: '問題6', option1: '選択肢6-1', option2: '選択肢6-2', option3: '選択肢6-3', option4: '選択肢6-4', answer: 2)
Quiz.create(question: '問題7', option1: '選択肢7-1', option2: '選択肢7-2', option3: '選択肢7-3', option4: '選択肢7-4', answer: 3)
Quiz.create(question: '問題8', option1: '選択肢8-1', option2: '選択肢8-2', option3: '選択肢8-3', option4: '選択肢8-4', answer: 4)
Quiz.create(question: '問題9', option1: '選択肢9-1', option2: '選択肢9-2', option3: '選択肢9-3', option4: '選択肢9-4', answer: 1)
Quiz.create(question: '問題10', option1: '選択肢10-1', option2: '選択肢10-2', option3: '選択肢10-3', option4: '選択肢10-4', answer: 2)
