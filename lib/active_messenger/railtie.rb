module ActiveMessenger
  module Core
    class Railtie < ::Rails::Railtie
      initializer 'active_messenger' do
        ActiveMessenger::Base.env = Rails.env
        config_path = Rails.root.join('config', 'active_messenger.yml')

        ActiveMessenger::Base.load_config!(config_path) if File.exist?(config_path)
      end
    end
  end
end
