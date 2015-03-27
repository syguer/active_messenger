class RawConfiguredSlackMessenger < ActiveMessenger::Base
  adapter :slack

  self.webhook_url = 'https://hooks.slack.com/services/hogehoge'
  self.channel     = '#general'
  self.username    = 'hoge'
end
