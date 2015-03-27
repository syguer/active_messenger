require 'slack-notifier'

require 'active_support/core_ext/class/attribute'
require "active_messenger/adapters/base"

module ActiveMessenger
  module Adapters
    class Slack < ActiveMessenger::Adapters::Base
      cattr_accessor :webhook_url, :channel, :username

      def initialize
        @client = ::Slack::Notifier.new(
          self.class.webhook_url,
          channel: self.class.channel,
          username: self.class.username
        )
      end

      def channnel=(ch)
        @client.channel = ch
      end

      def username=(u_name)
        @client.username = u_name
      end

      def send!(msg)
        @client.ping(msg)
      end
    end
  end
end
