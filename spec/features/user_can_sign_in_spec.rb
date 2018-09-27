require 'rails_helper'

RSpec.feature "Sign In", type: :feature do

  before :each do
    visit "/users/sign_up"
    fill_in "user_full_name", with: "My Name"
    fill_in "user_email", with: "ab@cd.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    click_link "Sign out"
  end

  scenario "User can sign in" do
    visit "/"
    click_link "Sign In"
    fill_in "user_email", with: "ab@cd.com"
    fill_in "user_password", with: "123456"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully")
  end
end
