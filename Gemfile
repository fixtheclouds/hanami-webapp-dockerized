source 'https://rubygems.org'

# Hanami core
gem 'rake'
gem 'hanami',       '~> 1.3'
gem 'hanami-model', '~> 1.3'

# Databases
gem 'pg'

# Auth
gem 'bcrypt'
gem 'warden'

# Template engine
gem 'slim'

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
end

# TDD
group :test do
  gem 'rspec'
  gem 'capybara'
end

group :production do
  gem 'puma'
end
