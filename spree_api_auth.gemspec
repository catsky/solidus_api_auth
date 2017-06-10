lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_api_auth'
  s.version     = '3.0.0'
  s.summary     = "Spree's Authenticattion API"
  s.description = "Spree's Authenticattion API"
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'Masahiro Saito'
  s.email     = 'camelmasa@gmail.com'
  s.homepage  = "https://github.com/camelmasa/#{s.name}"

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  solidus_version = [">= 1.0.6", "< 3"]
  s.add_dependency 'spree_core', solidus_version
  s.add_dependency 'spree_api', solidus_version
  s.add_dependency 'spree_auth_devise', solidus_version

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'listen'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'coffee-rails'
end
