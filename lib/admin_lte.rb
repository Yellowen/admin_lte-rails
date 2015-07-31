require 'admin_lte/version'
require 'bootstrap-sass'
require 'rails-assets-admin-lte'
require 'jquery-rails'
require 'font-awesome-rails'
require 'jquery-ui-rails'
require 'select2-rails'
require 'momentjs-rails'
require 'bootstrap3-datetimepicker-rails'
require 'rails-assets-jquery-knob'
require 'rails-assets-bootstrap-daterangepicker'
require 'rails-assets-jquery-sparkline'
require 'rails-assets-jquery-icheck'
require 'chart-js-rails'
require 'ionicons-rails'

module AdminLte

  def self.gem_path
    Pathname(File.realpath(__FILE__)).join('../..')
  end

  def self.gem_spec
    Gem::Specification::load(
      gem_path.join("admin_lte.gemspec").to_s
    )
  end

  def self.load_paths
    gem_path.join('app/assets').each_child.to_a
  end

  def self.dependencies
    ['rails-assets-admin-lte']
  end

  if defined?(Rails)
    class Engine < ::Rails::Engine
      # Rails -> use app/assets directory.
    end
  end

end

class RailsAssets
  @components ||= []

  class << self
    attr_accessor :components

    def load_paths
      components.flat_map(&:load_paths)
    end
  end
end

RailsAssets.components << AdminLte
