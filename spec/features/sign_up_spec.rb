require 'rails_helper'

feature 'Guests' do

  scenario 'Guest can sign up successfully' do

    visit root_path
    click_on 'create an account'
    fill_in 'choose username', with: 'testman'
    fill_in 'password', with: 'new'
    fill_in 'verify password', with: 'new'
    fill_in 'email (optional)', with: 'testman@example.com'
    click_on 'CREATE ACCOUNT'

    expect(current_path).to eq "/"
    expect(page).to have_content("Thanks for signing up")
  end

end
