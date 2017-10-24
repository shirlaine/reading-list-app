require 'rails_helper'

RSpec.describe Book, type: :model do

  let(:subject) { create(:book) }

  describe 'validations' do
    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:author) }
  end

  describe 'associations' do
    it { expect(subject).to have_many(:bookmarks) }
  end

end
