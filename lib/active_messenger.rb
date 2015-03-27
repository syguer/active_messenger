require "active_messenger/version"
require "active_messenger/base"
require "active_messenger/errors"
require "active_messenger/adapters/hipchat"

require "active_messenger/railtie" if defined? Rails

module ActiveMessenger
end
