# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_lte-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'admin_lte-rails'
  spec.version       = AdminLte::VERSION
  spec.authors       = ["Sameer Rahmani"]
  spec.email         = ["lxsameer@gnu.org"]

  spec.summary       = %q{Gemified AdminLTE, with SASS and RTL support for Rails.}
  spec.description   = %q{Gemified AdminLTE, with SASS and RTL support for Rails.}
  spec.homepage      = "http://github.com/Yellowen/admin_lte-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails-assets-admin-lte', '~> 2.3.0'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'font-awesome-rails'
  spec.add_dependency 'jquery-ui-rails'
  spec.add_dependency 'select2-rails'
  spec.add_dependency 'momentjs-rails'
  spec.add_dependency 'bootstrap3-datetimepicker-rails'

  spec.add_dependency 'bootstrap-sass'

  spec.add_dependency 'chart-js-rails'
  spec.add_dependency 'ionicons-rails'

  spec.add_dependency 'rails-assets-bootstrap-rtl'
  spec.add_dependency 'rails-assets-jquery-knob'
  spec.add_dependency 'rails-assets-bootstrap-daterangepicker'
  spec.add_dependency 'rails-assets-jquery-sparkline'
  spec.add_dependency 'rails-assets-jquery-icheck'

  spec.add_development_dependency 'bundler', "~> 1.10"
  spec.add_development_dependency 'rake', "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'execjs'
  spec.add_development_dependency 'pry'
end
