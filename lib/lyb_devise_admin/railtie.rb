# encoding: utf-8

require 'lyb_devise_admin'
require 'rails'

module LybDeviseAdmin
  class Railtie < Rails::Engine
    initializer 'lyb_devise_admin.helpers' do
      ActionView::Base.send :include, DeviseHelper
    end
  end
end
