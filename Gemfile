source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "skeleton-rails", :git => "https://github.com/helios-technologies/skeleton-rails"
gem "devise"

group :development, :test do
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 6.0.0"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "shoulda-matchers"
end

group :development do
  gem "web-console"
end
