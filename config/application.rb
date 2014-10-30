require File.expand_path('../boot', __FILE__)

require 'rails/all'

require 'embedly'
require 'json'

# # multiple urls with opts
# objs = embedly_api.oembed(
#   :urls => ['http://www.youtube.com/watch?v=sPbJ4Z5D-n4&feature=topvideos',
#             'http://twitpic.com/3yr7hk'],
#   :maxwidth => 450,
#   :wmode => 'transparent',
#   :method => 'after'
# )
# json_obj = JSON.pretty_generate(objs.collect{|o| o.marshal_dump})
# puts json_obj

# call api with key (you'll need a real key)
# embedly_api = Embedly::API.new :key => '9d9141c00e694418a13f4838aed7cacd',
#         :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
# url = 'http://en.wikipedia.org/wiki/Hydrogen'
# obj = embedly_api.extract :url => url
# puts JSON.pretty_generate(obj[0].marshal_dump)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Atoms
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
