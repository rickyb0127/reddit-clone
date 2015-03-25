require 'rails_helper'

feature 'Users' do

  scenario 'User can see all posts' do
    user = create_user
    post = create_post(user_id: user.id )

    visit "/"

    expect(page).to have_content("My New Post")
  end

end
