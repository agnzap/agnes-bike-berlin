require 'rails_helper'

describe Comment, type: :model do
  context "new comment is valid with user id, product id, body and rating" do
    let(:comment) {FactoryBot.build(:comment)}

    it "is fully valid" do
      expect(comment).to be_valid
    end
  end

  context "is not valid without user id" do
    let(:comment) {FactoryBot.build(:comment, user_id: nil)}

    it "is not a valid comment" do
      expect(comment).not_to be_valid
    end
  end

  context "is not valid without product id" do
    let(:comment) {FactoryBot.build(:comment, product_id: nil)}

    it "is not a valid comment" do
      expect(comment).not_to be_valid
    end
  end

  context "is not valid without a body" do
    let(:comment) {FactoryBot.build(:comment, body: nil)}

    it "is not a valid comment" do
      expect(comment).not_to be_valid
    end
  end

  context "is not valid without a rating" do
    let(:comment) {FactoryBot.build(:comment, rating: nil)}

    it "is not a valid comment" do
      expect(comment).not_to be_valid
    end
  end

  context "rating has wrong format - not an integer" do
    let(:comment) {FactoryBot.build(:comment, rating: "bike")}

    it "is not a valid rating" do
      expect(comment).not_to be_valid
    end
  end

end
