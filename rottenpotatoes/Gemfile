source 'https://rubygems.org'

#ruby '2.3.0'
ruby '2.2.2'
#gem 'rails', '4.2.6'
gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0.3'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 2.7.1'
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-rails'
gem 'haml'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.3.2'
  gem 'ZenTest', '4.11.0'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
		gem 'simplecov', :require => false
end
group :production do
	gem 'pg' # for Heroku deployment
	gem 'rails_12factor'
end
# Gems used only for assets and not required
# in production environments by default.

  #gem 'therubyracer', '~> 0.12.0'

# Deploy with Capistrano
# gem 'capistrano'
