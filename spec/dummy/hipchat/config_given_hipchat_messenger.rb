class ConfigGivenHipchatMessenger < ActiveMessenger::Base
  adapter :hipchat

  self.env = :test

  load_config! File.expand_path('../../config/active_messenger.yml', __FILE__)
end
