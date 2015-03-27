require 'active_support'
require "active_support/core_ext/string/inflections"
require 'active_support/core_ext/class/attribute'

require "active_messenger/core/postable"
require "active_messenger/core/config_parsable"
require "active_messenger/adapters/hipchat"
require "active_messenger/adapters/slack"

module ActiveMessenger
  class Base
    include Core::ConfigParsable
    include Core::Postable

    class_attribute :adapter

    def initialize
      @adapter = self.class.adapter_class.new
    end

    class << self
      def adapter(adapter_sym)
        self.adapter = adapter_sym
      end

      def adapter_class
       "ActiveMessenger::Adapters::#{self.adapter.to_s.classify}".constantize
      end

      def method_missing(method_name, *args, &block)
        if self.adapter_class.respond_to?(method_name)
          self.adapter_class.__send__(method_name, *args, &block)
        else
          super
        end
      end
    end
  end
end
