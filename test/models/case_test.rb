require 'test_helper'

  class CaseTest < ActiveSupport::TestCase
    def new_case
      Case.new(title: "My Case Title",
                year: "yyyy",
                abstract: "yyyy")
    end

    test "should have a title, year and abstract" do
      @test_case = Case.new
      assert @test_case.invalid?
      assert @test_case.errors[:title].any?
      assert @test_case.errors[:year].any?
      assert @test_case.errors[:abstract].any?
    end

    test "year must be 4 numbers long" do
      good = ['1984', '2017']
      bad = ['19555', '203', '20\3']
      def new_year(year)
        test_case = Case.new(title: "My lovely case", year: "1994", abstract: "My
        lovely case is lovely")
      end
    good.each do |year|
      assert new_year(year).valid?, "#{year} should be valid"
    end
    bad.each do |year|
      assert new_year(year).invalid?, "#{year} should be valid"
    end
  end
end
