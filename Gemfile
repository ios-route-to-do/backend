source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.5'
gem 'rails-api'

gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: :master
gem 'gravatar-ultimate'
gem 'paperclip', '~> 4.3'
gem 'aws-sdk', '< 2.0'

gem 'yelp'
gem 'faker'

group :production do
  gem 'rails_12factor'
  gem 'pg'
  gem 'puma'
end

group :development do
  gem 'spring'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'seed_dump'
end

group :test do
  gem 'simplecov'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
