require 'active_support'
require 'yaml'

module FlexibleConfig
  NotFound = Class.new(RuntimeError)

  module_function

  def use(config_key = '', &block)
    yield Builder.new config_key
  end
end

require 'flexible_config/builder'
require 'flexible_config/wrapped_env'
require 'flexible_config/wrapped_yaml'
