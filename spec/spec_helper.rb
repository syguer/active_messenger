$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../dummy/hipchat', __FILE__)
$LOAD_PATH.unshift File.expand_path('../dummy/slack', __FILE__)
$LOAD_PATH.unshift File.expand_path('../shared_examples', __FILE__)
require 'active_messenger'
require 'raw_configured_hipchat_messenger'
require 'config_given_hipchat_messenger'
require 'raw_configured_slack_messenger'
require 'postable'
