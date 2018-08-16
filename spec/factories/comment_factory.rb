FactoryBot.define do
  sequence(:user_id) { |n| "#{n}" }
  sequence(:product_id) { |n| "#{n}" }

  factory :comment, class: Comment do
    user
    product
    body "body"
    rating 2
  end

end
