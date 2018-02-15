# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Categories
Category.create([{ name: 'lorem ipsum', slug: 'lorem-ipsum', description: 'lorem ipsum dolor', updated_at: Time.zone.now }])

#Users
User.create([{ id: 100, username: 'John Doe', email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret' }])

#Posts
Post.create([{ id: 100, title: 'Premier post', content: 'lorem ipsum dolor', status: true, user_id: 100, updated_at: Time.zone.now }])

#Comments
Comment.create([{ id: 100, post_id: 100, user_id: 100, content: 'lorem ipsum dolor', updated_at: Time.zone.now }])