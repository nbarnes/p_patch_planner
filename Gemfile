source 'https://rubygems.org'
# Specify ruby version for Heroku deploy
ruby '2.0.0'

gem 'rails', '4.0.2'
# PostgreSQL
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'forecast_io'

group :production do
  # Heroku requirement
  gem 'rails_12factor'
end

group :development, :test do
# Rspec
  gem "rspec-rails"
# Capybara
  gem 'capybara'
  gem 'launchy'
# pry inline debugger
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-doc'
# Figaro for removing secret keys from github
  gem 'figaro'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
