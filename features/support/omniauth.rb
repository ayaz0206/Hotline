
OmniAuth.config.test_mode = true
OmniAuth.config.add_mock(:google_oauth2, {
  :uid => '107500576366670466152',
  :info => {
    :first_name => 'Test',
    :last_name => 'Test',
    :name => 'Test Test',
    :email => 'hotlinetestings@gmail.com'
  },
  :credentials => {
    :refresh_token => "asdf",
    :access_token => 'ya29.1.AADtN_UYeBX2wSU7wpoGU36VfF5no88-36-81QCIIonForQFIMKcPpYcHkVuLg',
    :expires => nil,
    :image => "https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg"
  }
})

