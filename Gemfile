source 'https://rubygems.org'

# Tell Heroku what ruby to run.
ruby "1.9.3"

gem 'rails', '3.2.12'
gem 'pg'
gem 'jquery-rails'
gem 'haml-rails'
gem "awesome_print", "~> 1.1.0" # http://rubygems.org/gems/awesome_print
gem 'underscore-rails' # https://github.com/rweng/underscore-rails
gem 'annotate', ">=2.5.0" # https://github.com/ctran/annotate_models
gem 'postmark-rails' #https://devcenter.heroku.com/articles/postmark

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "jshint_on_rails", "~> 1.0.2" #https://github.com/bgouveia/jshint_on_rails
  gem 'coffee-rails-source-maps' # https://github.com/markbates/coffee-rails-source-maps
end

group :test do
  gem 'test-unit'
end

group :test, :development do
  gem 'jasmine-rails' # https://github.com/searls/jasmine-rails
end

# Use 'thin' in production
group :production do
  gem 'thin'
end

