# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..5
    a= Post.new
    a.title = 'title' + i.to_s
    a.content = 'seed' + i.to_s
    a.save
    for j in 1..5
        b=Comment.new
        b.content = 'comment' + j.to_s
        b.post_id = a.id
        b.save
    end
end
