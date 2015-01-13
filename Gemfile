source 'https://rubygems.org'

# Ruby Version
ruby "2.1.4"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.1.8'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use Bootstrap Theme for CSS Engine
gem 'bootstrap-sass', '~> 3.3.1'
# Use Bootstrap Forms - Twitter Bootstrap Form helpers
gem 'bootstrap_form'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jquery-turbolinks'
# 
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking
gem 'minitest', '~> 5.4.3'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn', '~> 4.8.3'



# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Autoprefixer Autoprefixer is a tool to parse CSS and add vendor prefixes to CSS rules using values from the Can I Use.
# his gem provides Ruby and Ruby on Rails integration with this JavaScript tool.

# Use devise for flexible authentication solution for Rails.
gem 'devise', '~> 3.4.1'

# Use Omniauth for integration with Twitter, Facebook, Linkedin
gem 'omniauth', '~> 1.2.2'
gem 'omniauth-twitter', '~>  1.1.0'
gem 'omniauth-instagram', '~> 1.0.1'

# Use paperclip for Easy upload management for ActiveRecord
gem 'paperclip', '~> 4.2.0'

# ActiveRecord Reputation System gem allows rails apps to compute and publish reputation scores for active record models.
#gem 'activerecord-reputation-system', require: 'reputation_system'

# Will Paginate
gem 'will_paginate', '~> 3.0.7'
gem 'will_paginate-bootstrap'

# Aws
gem 'aws-sdk', '~> 1.59.1'

# converts all links inside of body of text
gem 'rinku', '~> 1.7.3'

# Masonary GEM

gem 'masonry-rails'


# Development Environment Set-Up
group :development, :test do
     gem 'sqlite3'
     
    # BBD testing for Ruby
	 #gem 'rspec-rails', '~> 3.1.0'

	 # Capybara is an integration testing tool for rack based web applications. It simulates how a user would interact with a website
	 #gem 'capybara', '~> 2.4.4'
end

group :production do
     gem 'pg'
     gem 'rails_12factor'
end

