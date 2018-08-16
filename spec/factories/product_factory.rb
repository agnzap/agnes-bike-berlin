FactoryBot.define do
  sequence(:name) { |n| "bike#{n}" }

  factory :product do
    name "bike"
    description "bike description"
    price 300
    image_url "bike1.jpg"
  end

end
