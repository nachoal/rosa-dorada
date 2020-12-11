require File.join(File.dirname(__FILE__), 'rosa_dorada')
require 'test/unit'

class TestUntitled < Test::Unit::TestCase
  def test_foo
    items = [Item.new("foo", 0, 0)]
    RosaDorada.new(items).update_quality()
    assert_equal items[0].name, "fixme"
  end
end
