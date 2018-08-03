FactoryBot.define do
  sequence(:user_id) { |n| "#{n}" }
  sequence(:product_id) { |n| "#{n}" }

  factory :comment do
    user_id
    product_id
    body "body"
    rating 1
  end

end
