class Address < ActiveRecord::Base
  validates_presence_of :addresstype

  belongs_to :addresstype, 
    :class_name => :Listitem,
    :foreign_key => :address_type_id

  belongs_to :contacts
end
