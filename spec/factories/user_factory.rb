FactoryBot.define do
  sequence(:email) {|n| "user#{n}@test.com"}

  factory :user do
    email
    password "pass1234"
    first_name "User"
    last_name "Example"
    admin false
  end

  factory :admin, class: User do
    email
    password "pass12345"
    admin true
    first_name "Admin"
    last_name "User"
  end

end
