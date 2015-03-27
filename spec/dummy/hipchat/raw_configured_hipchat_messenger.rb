class RawConfiguredHipchatMessenger < ActiveMessenger::Base
  adapter :hipchat

  self.api_token = 'hogehoge'
  self.room_id   = 1234567
  self.user_name = 'hoge'
end
