class Address < ActiveRecord::Base
  belongs_to :listitems
  belongs_to :contacts
end
