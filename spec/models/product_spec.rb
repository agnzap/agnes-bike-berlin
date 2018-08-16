require 'rails_helper'

describe Product, type: :model do
  context "when the product has comments" do
    let(:product) {FactoryBot.create(:product)}
    let(:user) {FactoryBot.create(:user)}

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq(3)
    end
  end

  context "is valid with name, description and price" do
    let(:product) {FactoryBot.build(:product)}

    it "is a valid product" do
      expect(product).to be_valid
    end
  end

  context "is not valid without a name" do
    let(:product) {FactoryBot.build(:product, name: nil)}

    it "is not a valid product" do
      expect(product).not_to be_valid
    end
  end

  context "product is not valid without a price" do
    let(:product) {FactoryBot.build(:product, price: nil)}

    it "is not a valid product" do
      expect(product).not_to be_valid
    end
  end

end
