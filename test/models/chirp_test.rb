require "test_helper"
require 'mocha/minitest'

class ChirpTest < ActiveSupport::TestCase

  setup do 
    @chirp = Chirp.create!(text: "THIS IS THE TESTING CHIRP")
  end

  test "Standard Model validations" do
    content = "012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890"
    @chirp.text = content
    assert_not @chirp.valid?
  end

  test "self.getAllChirpsOrdered - Unit" do 
    collection_mock = mock()
    ordered_collection_mock = mock()
    Chirp.expects(:all).returns(collection_mock)
    collection_mock.expects(:order).with("created_at DESC").returns(ordered_collection_mock)
    result = Chirp.getAllChirpsOrdered
    assert_equal result, ordered_collection_mock
  end

end
