require 'pdf-my-url'
require 'rails'

module PdfMyUrl
  class Railtie < Rails::Railtie
    initializer 'pdf-my-url.initialize' do
      ActionView::Helpers.send :include, PdfMyUrl
    end
  end
end