require "rails_helper"

describe ProductsController, type: :controller do
  let(:product) {FactoryBot.create(:product)}
  let(:user) {FactoryBot.create(:user)}
  let(:admin) {FactoryBot.create(:admin)}

  context "GET #index" do
    it "renders the product index page" do
      get :index
      expect(response).to be_ok
      expect(response).to render_template("index")
    end
  end

  context "GET #show" do
    it "renders the show page" do
      get :show, params:{id: product.id}
      expect(response).to be_ok
      expect(response).to render_template("show")
    end
  end

  context "GET #new" do
    before do
      sign_in user
    end

    it "renders the new product page with form" do
      get :new
      expect(response).to render_template("products/new")
    end
  end

  context "GET #edit" do
    before do
      sign_in user
    end

    it "renders the edition page" do
      get :edit, params: {id: product.id}
      expect(response).to be_ok
      expect(response).to render_template("products/edit")
    end
  end

  context "POST #create" do
    before do
      sign_in admin
    end

    it "allows admin to create a new product" do
      get :create, params: {product: FactoryBot.attributes_for(:product)}
      expect(response).to redirect_to("/products/#{assigns(:product).id}")
    end
  end


  context "PATCH #update" do
    before do
      sign_in admin
      @updated = {name: product.name, image_url: product.image_url, id: product.id, price: "1200", colour: product.colour}
    end

    it "updates a product" do
      patch :update, params: { id: product.id, product: @updated}
      product.reload
      expect(product.price).to eq 1200
    end
  end

  context "DELETE #destroy" do
    before do
      sign_in admin
    end

    it "allows admin to delete the product" do
      delete :destroy, params: {id: product.id}
      expect(response).to redirect_to products_path
    end
  end

end
