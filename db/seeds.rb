# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Puts seeds for books

10.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author
    )
end

# Puts seeds for books
  Bookmark.create(
    page_number: Faker::Number.between(1, 500) #=> 7
    description: Faker::HowIMetYourMother.quote
    book_id: 5
    )


