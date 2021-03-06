require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Posts can have new lines" do
    user_sign_up
    user_sign_in
    visit '/posts/new'
    fill_in 'Message', with: 'Post with \n new line?'
    click_button 'Submit'

    expect(page).to have_content ('Post with \\n new line?')
  end
end
