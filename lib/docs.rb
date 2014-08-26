require "docs/engine"

module Docs
  mattr_reader :devise_resource_name
  def self.devise_resource_name=(resource_name)
    @@devise_resource_name = resource_name.to_s.singularize
  end

  def self.setup
    yield self
  end
end
