require 'spec_helper'

feature "User registration" do
  scenario "user can register for the site" do
    visit new_user_path

    fill_in 'user[email]', with: "mike@example.com"
    click_button "Register"

    expect(page).to have_content "Welcome mike@example.com!"
  end
end