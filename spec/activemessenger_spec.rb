require 'spec_helper'

describe ActiveMessenger do
  describe 'raw_configured_hipchat_adapter' do
    let(:messenger) { RawConfiguredHipchatMessenger.new }
    it_behaves_like "postable"
  end

  describe 'config_given_hipchat_adapter' do
    let(:messenger) { ConfigGivenHipchatMessenger.new }
    it_behaves_like "postable"
  end

  describe 'raw_configured_slack_adapter' do
    let(:messenger) { RawConfiguredSlackMessenger.new }
    it_behaves_like "postable"
  end
end
