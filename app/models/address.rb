class Address < ActiveRecord::Base
  validates_presence_of :address_type
  validates_presence_of :contact_id

  belongs_to :address_type,
    :class_name => "Listitem"
    #:foreign_key => "address_type_id"

  belongs_to :Contact
end
