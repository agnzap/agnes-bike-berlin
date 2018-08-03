require "rails_helper"

describe ProductsController, type: :controller do
  @product = FactoryBot.create(:product)

  describe "GET #index" do
    it "renders the product index page" do
      get :index
      expect(response).to be_ok
      expect(response).to render_template("index")
    end
  end
end
