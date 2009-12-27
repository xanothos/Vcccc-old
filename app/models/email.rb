class Email < ActiveRecord::Base
  validates_presence_of :email_type

  belongs_to :Contact

  belongs_to :email_type,
    :class_name=>'Listitem'
    #:foreign_key=>'email_type_id'

end
