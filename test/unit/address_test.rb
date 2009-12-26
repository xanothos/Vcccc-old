require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test 'address type cannot be nil' do
    a = Address.new
    assert !a.save, 'Address was saved successfully'
    assert a.errors.invalid?(:addresstype)
  end
end
