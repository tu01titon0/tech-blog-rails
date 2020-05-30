# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all

users = User.create(
  [
    {email: "sample1@sample.com", password: "password", password_confirmation: "password"},
    {email: "sample2@sample.com", password: "password", password_confirmation: "password"},
    {email: "sample3@sample.com", password: "password", password_confirmation: "password"},
  ]
)

contents = [
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
]

users.each do |user|
  10.times do |i|
    Post.create(title: "Title - #{i}", content:contents.sample, image_url: "https://www.brainscape.com/blog/wp-content/uploads/2015/01/hires.jpg", user: user)
  end
end

