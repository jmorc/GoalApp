require 'spec_helper'
require 'rails_helper'

feature "this signup process" do

  scenario "has a new user page" do
    visit new_user_url
    expect(page).to have_content "New User"
  end

  feature "signing up a user" do
    before(:each) do
      visit new_user_url
      fill_in 'username' with: 'testing_username'
      fill_in 'password' with: 'test_pwd'
      click_on 'Create User'
    end

    scenario "shows the username on homepage after signup" do
      expect(page).to have_content 'testing_username'
    end

  end

end
