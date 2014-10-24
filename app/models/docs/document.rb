module Docs
  class Document < ActiveRecord::Base
    acts_as_taggable

    belongs_to :folder
    has_many :revisions
    has_many :permissions

  end
end
