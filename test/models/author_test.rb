require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def new_author
    Author.new(first_name: "Peggy",
               last_name: "Connelly")

  end

  test "should not save author without first or last name" do
    @author = Author.new
    assert @author.invalid?
    assert @author.errors[:first_name].any?
    assert @author.errors[:last_name].any?
  end
end
