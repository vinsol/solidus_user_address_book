# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_user_address_book/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_user_address_book'
  s.version     = SolidusUserAddressBook::VERSION
  s.summary     = 'Add address book feature for users'
  s.description = 'Add address book feature for users under my acccount section.'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Akhil Bansal'
  s.email     = 'bansalakhil30.10@gmail.com'
  # s.homepage  = 'http://www.example.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '>= 2.1'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'pry-nav'
  # s.add_development_dependency 'pry'

end
