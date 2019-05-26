require "rails_helper"

feature "user" do
  before(:each) do
    @user = create(:user)
  end

  scenario "user" do
    user
  end
end