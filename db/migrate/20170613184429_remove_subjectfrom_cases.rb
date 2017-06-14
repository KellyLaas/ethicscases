class RemoveSubjectfromCases < ActiveRecord::Migration[5.1]
  def change
    remove_colum :cases, subject, :string
  end
end
