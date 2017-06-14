require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def new_author
    Author.new(first_name: "Peggy",
               last_name: "Connelly")

  end

  test "should not save author without first or last name" do
    author = Author.new
    assert_not author.save
  end
end
