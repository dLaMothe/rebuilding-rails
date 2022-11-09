source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in rulers.gemspec
gemspec

gem 'rake', '~> 13.0'
gem 'sorbet-runtime', '~> 0.5.10486'

group :development do
  gem 'rubocop', '~> 1.21'
  gem 'rubocop-minitest'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-sorbet'
  gem 'ruby-lsp'
  gem 'sorbet', '~> 0.5.10486'
  gem 'tapioca', require: false
end
