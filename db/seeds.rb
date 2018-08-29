# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Blogconfig.create(id:1, title:'Myblog', subtitle:'myideas', stylename:'gray')
# data = ['one', 'two', 'three', 'four', 'five', 'seven', 'eight', 'nine', 'ten', 'zero', 'white', 'black', 'gray', 'red', 'blue', 'green', 'yellow', 'cyan', 'magenta']

# for i in 1..100 do
  # DataPage.create data:data.sample
# end

Person.create(name:'taro', age:35, mail:'taro@gmail')
Person.create(name:'yoko', age:45, mail:'YOko@gmail')
Person.create(name:'tami', age:55, mail:'Tami@gmail')
