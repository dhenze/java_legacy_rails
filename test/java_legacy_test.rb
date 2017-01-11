require 'test_helper'

class JavaLegacyTest < ActiveSupport::TestCase
  setup do
    @ec = JavaLegacyRails::EnumCoder.new
    @normal_data = "separated,by,commata,and,no,space"
    @legacy_data = " separated, by, commata, and, space"
  end

  test "truth" do
    assert_kind_of Module, JavaLegacyRails
  end

  test "it properly loads Strings seperated by commata and space (, ) as array" do
    assert_equal ["separated", "by", "commata", "and", "space"], @ec.load(@legacy_data)
  end

  test "it properly loads standard serialized Strings as array" do
    assert_equal ["separated", "by", "commata", "and", "no", "space"], @ec.load(@normal_data)
  end

  test "it dumps data only comma separated" do
    assert_equal "separated, by, commata, and, no, space", @ec.dump(["separated", "by", "commata", "and", "no", "space"])
  end
end
