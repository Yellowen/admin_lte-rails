# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_lte/version'

Gem::Specification.new do |spec|
  spec.name          = "admin_lte"
  spec.version       = AdminLte::VERSION
  spec.authors       = ["Sameer Rahmani"]
  spec.email         = ["lxsameer@gnu.org"]

  spec.summary       = %q{Gemified AdminLTE, with RTL support.}
  spec.description   = %q{Gemified AdminLTE, with RTL support.}
  spec.homepage      = "http://github.com/Yellowen/admin_lte"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', "~> 1.10"
  spec.add_development_dependency 'rake', "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'execjs'
  spec.add_development_dependency 'pry'
end
