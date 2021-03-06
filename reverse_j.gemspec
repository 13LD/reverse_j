$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'reverse_j/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'reverse_j'
  s.version     = ReverseJ::VERSION
  s.authors     = ['Dmytro Lysohor']
  s.email       = ['d.lysohor@gmail.com']
  s.date        = '2018-04-18'
  s.summary     = 'JSON data reverse '
  s.description = 'Amoniac task 1'
  s.homepage    = 'https://github.com/13LD/reverse_j'
  s.license     = 'MIT'

  s.files = Dir[
    '{app,config,test,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md'
  ]

  s.add_dependency 'rails', '~> 5'

  s.add_development_dependency 'sqlite3', '~> 0'
  s.add_development_dependency 'rspec-rails', '~> 3.5'
end
