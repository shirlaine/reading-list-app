class Bookmark < ApplicationRecord

  belongs_to :book

  validates :page_number, presence: true
  validates :book_id, presence: true

end
