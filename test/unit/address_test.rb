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
    l = Listitem.find_or_create_by_strListName_and_strListValue('address_type', 'home')

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

end
