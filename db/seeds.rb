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
