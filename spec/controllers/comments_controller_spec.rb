require "rails_helper"

describe CommentsController, type: :controller do
  let (:user) {User.create!(email: "user@gmail.com", password: "pass1234")}
  let (:product) {Product.create!(name:"race bike", image_url:"image.jpg")}
  let (:comment) {Comment.create!(user_id: user_id, product_id: product_id, body:"body", rating: 1)}


  before do
    sign_in user
  end

end
