class Email < ActiveRecord::Base
  belongs_to :contacts

  belongs_to :emailtype,
    :class_name=>'Listitem',
    :foreign_key=>'email_type_id'

end
