# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Result.delete_all

Quiz.delete_all
Quiz.create(question: '中華料理のバンバンジー。漢字で書くと？', option1: '棒棒鶏', option2: '万飯爺', option3: '万々慈', option4: '飯々餌', answer: 1)
Quiz.create(question: '中華料理のザーサイ。感じで書くと？', option1: '在菜', option2: '搾菜', option3: '再菜', option4: '差菜', answer: 2)
Quiz.create(question: '中華料理の搾菜。何と読む？', option1: 'シボナ', option2: 'シボサイ', option3: 'ザーサイ', option4: 'シーサイ', answer: 3)
Quiz.create(question: '四字熟語「◯人◯色」、◯の数を足すといくつ？', option1: '5', option2: '10', option3: '15', option4: '20', answer: 4)
Quiz.create(question: '最も緯度が低い都市はどこ？', option1: '香港', option2: '那覇', option3: '上海', option4: '台北', answer: 1)
Quiz.create(question: '問題6', option1: '選択肢6-1', option2: '選択肢6-2', option3: '選択肢6-3', option4: '選択肢6-4', answer: 2)
Quiz.create(question: '問題7', option1: '選択肢7-1', option2: '選択肢7-2', option3: '選択肢7-3', option4: '選択肢7-4', answer: 3)
Quiz.create(question: '問題8', option1: '選択肢8-1', option2: '選択肢8-2', option3: '選択肢8-3', option4: '選択肢8-4', answer: 4)
Quiz.create(question: '問題9', option1: '選択肢9-1', option2: '選択肢9-2', option3: '選択肢9-3', option4: '選択肢9-4', answer: 1)
Quiz.create(question: '問題10', option1: '選択肢10-1', option2: '選択肢10-2', option3: '選択肢10-3', option4: '選択肢10-4', answer: 2)
