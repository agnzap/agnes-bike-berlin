FactoryBot.define do
  sequence(:name) { |n| "bike#{n}" }

  factory :product do
    name
    description "bike description"
    image_url "bike.jpg"
  end

end
