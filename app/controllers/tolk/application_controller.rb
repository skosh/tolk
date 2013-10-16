require 'tolk/application_controller'

module Tolk
  class ApplicationController < ActionController::Base
    helper :all
    protect_from_forgery

    cattr_accessor :authenticator
    before_filter :authenticate

    def authenticate
      instance_eval(&self.authenticator) if self.authenticator
    end

    def ensure_no_primary_locale
      redirect_to tolk.locales_path if @locale.primary?
    end
  end
end
