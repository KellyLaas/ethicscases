class RemoveAuthorFromCases < ActiveRecord::Migration[5.1]
  def change
    remove_column :cases, :author, :string
  end
end
