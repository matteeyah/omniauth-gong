# frozen_string_literal: true

require File.expand_path(
  File.join('..', 'lib', 'omniauth', 'gong', 'version'),
  __FILE__
)

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-gong'
  gem.version       = OmniAuth::Gong::VERSION
  gem.license       = 'MIT'
  gem.summary       = %(A Gong OAuth2 strategy for OmniAuth 1.x)
  gem.description   = %(A Gong OAuth2 strategy for OmniAuth 1.x. This allows you to login to Gong with your ruby app.)
  gem.authors       = ['Matija Čupić']
  gem.email         = ['matteeyah@gmail.com']
  gem.homepage      = 'https://github.com/matteeyah/omniauth-gong'

  gem.metadata['rubygems_mfa_required'] = 'true'

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.2'

  gem.add_runtime_dependency 'omniauth', '~> 2.0'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.7'

  gem.add_development_dependency 'rubocop', '~> 1.42'
end
