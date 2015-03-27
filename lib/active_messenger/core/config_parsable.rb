require 'active_support/concern'
require 'yaml'

module ActiveMessenger
  module Core
    module ConfigParsable
      extend ActiveSupport::Concern

      included do
        cattr_accessor :config, :env
      end

      module ClassMethods
        def load_config!(config_path)
          self.config ||= parse_config!(config_path)
        end

        private

        def parse_config!(config_path)
          unless self.env
            raise ActiveMessenger::ConfigParseError.new("Adapter should be set 'env' to parse config!")
          end

          unless self.adapter
            raise ActiveMessenger::ConfigParseError.new("Adapter should be set 'adapter' to parse config!")
          end

          parsed_config = YAML.load_file(config_path)[self.env.to_s][self.adapter.to_s]

          if parsed_config.nil?
            raise ActiveMessenger::ConfigParseError.new("Config missing. Please check configure format!")
          end
        rescue SyntaxError => e
          raise ActiveMessenger::ConfigParseError.new(e.msessage)
        end
      end
    end
  end
end
