require 'test_helper'

class CaseTest < ActiveSupport::TestCase
  def new_case
    Case.new(title: "My Case Title",
              year: "yyyy",
              abstract: "yyyy")
  end

  test "should have a title, year and abstract" do
    test_case = Case.new
    assert @test_case.invalid?
    assert @test_case.errors[:title].any?
    assert @test_case.errors[:year].any?
    assert @test_case.errors[:abstract].any?
  end

end
