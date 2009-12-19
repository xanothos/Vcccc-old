class Contact < ActiveRecord::Base
  belongs_to :securityquestion,
    :class_name=>'Listitem',
    :foreign_key=>'security_question_id'
  
  has_many :email
  has_many :phones
  has_many :addresses
  has_many :workorders
end
