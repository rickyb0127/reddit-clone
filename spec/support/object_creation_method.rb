def create_user(options={})
  defaults = {
    username: 'testman',
    password: 'wookie',
    email: 'tm@example.com'
  }
  User.create!(defaults.merge(options))
end

def create_post(options={})
  defaults = {
    title: 'My New Post',
  }
  Post.create!(defaults.merge(options))
end
