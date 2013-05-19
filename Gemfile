source 'https://rubygems.org'

# Tell Heroku what ruby to run.
ruby "1.9.3"

gem 'rails', '3.2.12'
gem 'pg'
gem 'thin'
gem "awesome_print", "~> 1.1.0" # http://rubygems.org/gems/awesome_print
gem 'annotate', ">=2.5.0" # https://github.com/ctran/annotate_models
gem 'simple_form' # https://github.com/plataformatec/simple_form

gem 'haml-rails' # can't be in assets for heroku
gem 'sass-rails',   '~> 3.2.3'
gem 'compass-rails' #moving out of assets for heroku
gem 'newrelic_rpm' # heroku addon https://rpm.newrelic.com/accounts/335790/applications/setup

group :assets do
  gem 'bootstrap-sass', '~> 2.3.1.0' #https://github.com/thomas-mcdonald/bootstrap-sass
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'
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
