require 'rails_helper'

describe User do
  context "validating new user" do

    it "requires email address" do
      expect(User.new(email: nil)).not_to be_valid
    end

    it "invalid email, not at sign" do
      expect(User.new(email: "examplegmail.com")).not_to be_valid
    end

    it "invalid email, no domain" do
      expect(User.new(email: "example@gmailcom")).not_to be_valid
    end

  end
end
