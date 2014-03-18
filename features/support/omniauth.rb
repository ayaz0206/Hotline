OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:google_oauth2, {
  :uid => '1234',
  :info => {
    :first_name => 'Test',
    :last_name => 'Test',
    :name => 'Test Test',
    :email => 'example@gmail.com'
  },
  :credentials => {
    :refresh_token => 'asdf',
    :access_token => 'abcd',
    :expires => nil,
    :image => "https://google_photo.jpg"
  }
})

