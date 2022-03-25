FactoryBot.define do
  factory :listing do
    title { "MyString" }
    user { nil }
    condition { 1 }
    category { nil }
    description { "MyText" }
    sold { false }
  end
end
