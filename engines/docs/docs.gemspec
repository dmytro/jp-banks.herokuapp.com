$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'docs/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'docs'
  s.version     = Docs::VERSION
  s.authors     = ['Shouichi Kamiya']
  s.email       = ['shouichi.kamiya@gmail.com']
  s.homepage    = 'http://jp-banks.herokuapp.com'
  s.summary     = 'Japanese banks search API.'
  s.description = 'Docs module'

  s.files = Dir['{config}/**/*', 'Rakefile']
end
