require 'rails_helper'

feature 'Users' do

  scenario 'User can sign in successfully' do

    user = create_user

    visit root_path
    click_on 'sign in'
    fill_in 'username', with: 'testman'
    fill_in 'password', with: 'wookie'
    click_on 'login'

    expect(current_path).to eq "/"
    expect(page).to have_content("Thanks for signing in")
  end

end
