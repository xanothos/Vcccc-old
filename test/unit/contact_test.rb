require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  def test_security_question_is_not_nil
    c=Contact.new
    c.save
    assert c.new_record? #record didn't get saved
    assert c.errors.invalid?(:securityquestion)
  end
end
