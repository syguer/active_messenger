require 'active_support/concern'

module ActiveMessenger
  module Core
    module Postable
      extend ActiveSupport::Concern

      def send!(msg)
        @adapter.send!(msg)
      end
    end
  end
end
