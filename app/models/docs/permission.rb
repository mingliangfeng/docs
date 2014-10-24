module Docs
  class Permission < ActiveRecord::Base
    belongs_to :document
    
  end
end
