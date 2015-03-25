def create_user(options={})
  defaults = {
    username: 'testman',
    password: 'wookie',
    email: 'tm@example.com'
  }
  User.create!(defaults.merge(options))
end
