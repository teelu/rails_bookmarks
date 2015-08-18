# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bookmarks = Bookmark.create([
  {url: 'www.reddit.com', title: 'Reddit', category: 'Funny', comment: 'Great time waster!', favorite: true},
  {url: 'www.css-tricks.com', title: 'CSS Tricks', category: 'Useful', comment: 'Neat little blog about all front end web design'},
  {url: 'www.cnn.com', title: 'CNN', category: 'Serious', comment: 'News'},
  {url: 'www.imgur.com', title: 'Image Hosting for reddit', category: 'Funny', comment: 'Can sink hours here!'}
  ])