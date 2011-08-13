require 'lyb_devise_admin'
require 'rails'

module LybDeviseAdmin
  class Railtie < Rails::Engine
    config.to_prepare do
      ApplicationController.helper(DeviseHelper)
    end
  end
end
