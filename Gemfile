source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use thin server to handle web requests
gem 'thin'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Use to import google's material icons
gem 'material_icons'
# Use paperclip for file storage
gem 'paperclip', "~> 5.0.0.beta1"
# Use aws-sdk gem to allow hosting on amazon s3 servers
gem 'aws-sdk'
# Use turbolinks for faster page loading
# gem 'turbolinks', '~> 5.0.0.beta'

# # Use to fix jquery and turbolinks errors
# gem 'jquery-turbolinks'

# Use js-routes to create js helpers for rails routes
gem "js-routes"
# Use devise for user authentication
gem 'devise'
# Use sprockets
gem 'sprockets', '~> 3.0'
# Use faker to generate fake data models
gem 'faker'
# Use bootstrap-sass for styling
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use figaro to handle environment variables
gem 'figaro'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use rspec for testing
  gem 'rspec-rails'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
  #Use for Heroku, pg gem should be included unless already used above
  gem 'rails_12factor'

  # Use puma http server
  # gem 'puma'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
