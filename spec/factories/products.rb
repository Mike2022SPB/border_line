FactoryBot.define do
  factory :product do
    title { |n| "title ##{n}" }

    description { |n| "description ##{n}" }

    price { |n| n }
  end
end
