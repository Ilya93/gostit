require 'test_helper'

class StudyTest < ActiveSupport::TestCase
  test "study attributes must not be empty" do
    study = Study.new
    assert study.invalid?
    assert study.errors[:title].any?
    assert study.errors[:text].any? 
    assert study.errors[:user_id].any?
  end
  test "study user_id must be grater than 5" do
    # user_id>=5
    study = Study.new(title: "My Title",
                        text: "yyy")
    study.user_id = 2
    assert study.invalid?
    assert_equal ["must be greater than or equal to 5"], 
    study.errors[:user_id]
    study.user_id = 6
    assert study.valid?
  end
  test "user_id is not valid without a unique title" do
    study = Study.new(title: "title",
        text:    "yyy",
        user_id:  studies(:one).user_id)
    assert study.invalid?
    assert_equal ["has already been taken"], study.errors[:user_id]
                # уже было использовано
  end
end