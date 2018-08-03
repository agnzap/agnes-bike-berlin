require "rails_helper"

describe CommentsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @product = FactoryBot.create(:product)
    @comment = FactoryBot.create(:comment)
  end

  before do
    sign_in @user
  end

end
