require 'rails_helper'

describe Comment do
  context "validate new comment" do

    it "rating is missing" do
      expect(Comment.new(rating: nil)).not_to be_valid
    end

    it "body is missing" do
      expect(Comment.new(body: nil)).not_to be_valid
    end

  end

end
