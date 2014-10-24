module Docs
  class Revision < ActiveRecord::Base
    has_attached_file :attachment
    do_not_validate_attachment_content_type :attachment
    do_not_validate_attachment_file_name :attachment

    belongs_to :document
    
  end
end
