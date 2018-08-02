require "rails_helper"

describe ProductsController, type: :controller do
  let(:product) { Product.create!(name: "bike1", image_url: "bike1.jpg") }
  let(:user) { User.create!(email: "user@gmail.com", password: "pass1234") }
  let(:user_admin) { User.create!(email: "user_admin@gmail.com", password: "pass12345", admin: true)}

  describe "GET #index" do
    it "renders the product index page" do
      get :index
      expect(response).to be_ok
      expect(response).to render_template("index")
    end
  end
end
