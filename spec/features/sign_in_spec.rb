require 'rails_helper'

describe "Sign in flow" do 

  before do 
    @user = create(:user)
  end

  describe "Successful" do 
    it "redirects to the users to-do list page" do 
      visit root_path
      click_link 'Sign in'
      fill_in 'Email', with: @user.email 
      fill_in 'Password', with: @user.password 
      within 'form' do 
      click_button 'Log in'
      end
      expect(current_path).to eq user_path
  end
end
end