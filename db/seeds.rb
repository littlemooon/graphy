# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = Author.find_or_create_by(name: 'Terry Truth')

blog = Blog.find_or_create_by(title: 'A happy day at the beach')
blog[:content] = 'It was a great day!'
blog[:author_id] = author.id
blog.save!
