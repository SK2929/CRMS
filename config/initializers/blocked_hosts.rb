Rails.application.configure do
  config.hosts << "example.com"
  config.hosts << "crms.example.com"
  config.hosts << "localhost"
  config.hosts << "https://devcenter.heroku.com/articles/heroku-20-stack"
end
