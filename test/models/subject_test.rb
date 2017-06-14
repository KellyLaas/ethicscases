require 'test_helper'

  class SubjectTest < ActiveSupport::TestCase
    def new_subject
      Subject.new(subject: "whistleblowing")
    end

    test "should not save subject without content" do
      subject = Subject.new
      assert_not subject.save
    end
end
