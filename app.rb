require 'rubygems'
require 'sinatra/base'
require 'haml'
require 'i18n'
require 'i18n/backend/fallbacks'

class SinatraBootstrap < Sinatra::Base
  configure do
    I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)
    I18n.load_path = Dir[File.join(settings.root, 'locales', '*.yml')]
    I18n.backend.load_translations
    I18n.default_locale = "pl"
  end

  helpers do
    def t(*args)
      I18n.t(*args)
    end

    def l(*args)
      I18n.l(*args)
    end
  end

  get '/*' do
    request_locale = params[:splat][0]
    locale = request_locale.empty? ? "pl" : request_locale
    I18n.locale = locale
    haml :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
