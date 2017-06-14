class RemoveSubjectFromCases < ActiveRecord::Migration[5.1]
  def change
    remove_column :cases, :subject, :string
  end
end
