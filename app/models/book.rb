class Book < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true
  validates :author, presence: true
end
