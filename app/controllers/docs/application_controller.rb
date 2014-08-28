module Docs
  class ApplicationController < ActionController::Base
    include Devise::Controllers::Helpers
    include Devise::Controllers::SignInOut
    before_action :authenticate_devise_resource

  private
    def authenticate_devise_resource
      redirect_to new_session_path(devise_resource_name) unless signed_in?(devise_resource_name)
    end

    def devise_resource
      self.send "current_#{devise_resource_name}".to_sym
    end

    def current_docs_user
      @current_docs_user ||= Docs::User.new(devise_resource)
    end
    helper_method :current_docs_user

    def devise_resource_name
      Docs.devise_resource_name
    end
  end
end
