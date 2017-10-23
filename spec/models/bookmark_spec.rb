require 'rails_helper'

RSpec.describe Bookmark, type: :model do

  describe 'validations' do
    it { expect(subject).to validate_presence_of(:page_number) }
    it { expect(subject).to validate_presence_of(:book_id) }
  end

  describe 'associations' do
    it { expect(subject).to belong_to(:book) }
  end

end
