require 'dropbox-api'
require 'yaml'

bundle_settings = YAML::load(IO.read("bundle_settings.yml"))

Dropbox::API::Config.app_key    = bundle_settings['dropbox_app_key']
Dropbox::API::Config.app_secret = bundle_settings['dropbox_app_secret']
Dropbox::API::Config.mode       = 'dropbox'

module Dropbox
  def self.settings
    @settings ||= YAML::load(IO.read("dropbox.yml"))
  end

  def self.client
    @client ||= Dropbox::API::Client.new(
      :token  => settings['access_token'],
      :secret => settings['access_secret']
    )
  end

  def self.authorized?
    settings
    true
  rescue Errno::ENOENT => e
    false
  end
end