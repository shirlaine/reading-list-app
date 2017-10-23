FactoryBot.define do
  factory :bookmark do
    page_number "1"
    association :book
  end
end
