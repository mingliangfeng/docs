module Docs
  class User
    attr_accessor :host_user
    delegate :id, :to => :host_user

    def initialize(host_user)
      @host_user = host_user
    end

    def smart_name
      return host_user.name if host_user.respond_to?(:name)
      return host_user.email if host_user.respond_to?(:email)
      host_user.to_s
    end

    def is_docs_admin?
      return host_user.is_docs_admin? if host_user.respond_to?(:is_docs_admin?)
      false
    end

    def last_sign_in_at
      return host_user.last_sign_in_at if host_user.respond_to?(:last_sign_in_at)
    end

  end
end
