class Book < ApplicationRecord

  belongs_to :user
  has_many :bookmarks

  validates :title, presence: true
  validates :author, presence: true

end
