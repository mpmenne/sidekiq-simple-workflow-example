source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

source "https://enterprise.contribsys.com/" do
  gem "sidekiq-ent"
  gem "sidekiq-pro"
end

gem "bootsnap", ">= 1.4.4", require: false
gem "jbuilder", "~> 2.7"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.4", ">= 6.1.4.1"
gem "sassc-rails"
gem "sidekiq-simple_workflow", github: "mpmenne/sidekiq-simple-workflow"
gem "sqlite3", "~> 1.4"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "pry-stack_explorer", "~> 0.6.0"
end

group :development do
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
