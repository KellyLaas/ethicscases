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
end
