require 'rails_helper'

describe "Creating Item in the To do List" do 
include Warden::Test::Helpers
Warden.test_mode!

before do 
  @user = create(:user)
end

describe "Creating iem in to do list" do 
  it "shows new item" do 
    login_as(@user, :scope => :user)
    visit user_path
    fill_in 'Item', with: 'Buy Bananas'
    click_button 'Save'
    expect(current_path).to eq(item_path(@user.item))
  end
end
end