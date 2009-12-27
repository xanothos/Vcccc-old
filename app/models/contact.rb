class Contact < ActiveRecord::Base
  validates_presence_of :security_question
  validates_presence_of :security_question_answer
  
  belongs_to :security_question,
    :class_name => "Listitem"
    #:foreign_key => "security_question_id"
  
  has_many :email
  has_many :phones
  has_many :addresses
  has_many :workorders
end
