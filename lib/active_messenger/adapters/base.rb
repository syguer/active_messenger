module ActiveMessenger
  module Adapters
    class Base
      cattr_accessor :config_path
      cattr_reader :config

      class << self
        def load_config!
          self.config = ActiveMessenger::Core::ConfigParsable.parse_config!(self.config_path)
        end
      end

      def initialize
        raise NotImplementedError.new("Adapter does not implement 'initialize'")
      end

      def send!
        raise NotImplementedError.new("Adapter does not implement 'send!'")
      end
    end
  end
end

