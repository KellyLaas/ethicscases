require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  def new_case
    Case.new(title: "My Case Title",
              year: "yyyy",
              abstract: "yyyy")
  end

  test "should not save case without a title" do
    test_case = Case.new
    assert_not test_case.save, "Saved case without a title"
  end

  test "should not save case without a year" do
    test_case = Case.new(title: "What a day", abstract: "Why me?")
    refute test_case.valid?, "Case is not valid without a year"
    assert_not_nil test_case.errors[:year], "no validation error for year present"
  end

  test "should not save case without a abstract" do
    test_case = Case.new(title: "What a day", year: 1984)
    refute test_case.valid?, "Case is not valid without an abstarct"
    assert_not_nil test_case.errors[:year], "no validation error for abstract present"
  end
end
