require 'hipchat'

require 'active_support/core_ext/class/attribute'
require "active_messenger/adapters/base"

module ActiveMessenger
  module Adapters
    class Hipchat < ActiveMessenger::Adapters::Base
      cattr_accessor :api_token, :room_id, :user_name
      attr_accessor :room_id, :user_name

      def initialize
        @client = ::HipChat::Client.new(self.class.api_token, api_version: 'v2')
        @room_id = self.class.room_id
        @user_name = self.class.user_name
      end

      def send!(msg)
        @client[@room_id].send(@user_name, msg)
      end
    end
  end
end
