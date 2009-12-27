require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test 'validate presence of address_type' do
    a = Address.new
    a.save

    # the save should have aborted leaving us with an unsaved record (or new record)
    assert a.new_record?, 'Address was saved unexpectedly!'
    assert a.errors.invalid?(:address_type)
  end

  test 'validate presence of contact_id' do
    a = Address.new
    a.save

    # the save should have aborted leaving us with an unsaved record (or new record)
    assert a.new_record?, 'Address was saved unexpectedly!'
    assert a.errors.invalid?(:contact_id)
  end

  test 'proper address creation' do
    # the corresponsing list item must exist, so find it or create it
    l = Listitem.find_or_create_by_strListName_and_strListValue("address_type", "home")

    a = Address.create(
        :address1 => '123 Anywhere Street',
        :address2 => nil,
        :city => 'Springfield',
        :strState => 'CA',
        :postal_code => '90210',
        :address_type_id => l.id,
        :contact_id => 1)

    assert a.new_record? == false, 'Address was not saved as expected!'
    
  end

  # verifies that the belongs_to association is defined correctly
  test "verify contact assciation by name" do
    s = Listitem.find_or_create_by_strListName_and_strListValue("security_question", "favorite color")
    c = Contact.find_or_create_by_strFirstname_and_strLastname_and_security_question_id_and_security_question_answer("Test", "Client", s.id, "red")
    l = Listitem.find_or_create_by_strListName_and_strListValue("address_type", "home")

    assert !s.new_record?, "Security question not found or created!"
    assert !c.new_record?, "Contact record not found and not created!"
    assert !l.new_record?, "Address type not found and not created!"

    a = Address.create(
        :address1 => "",
        :address2 => "",
        :city => "",
        :strState => "",
        :postal_code => 12345,
        :address_type_id => l.id,
        :contact_id => c.id)

    assert !a.contact_id.nil?, "No contact assigned to this address!"
    assert a.contact.strFirstname == "Test", "Unable to link to associated contact record!"

  end
end
