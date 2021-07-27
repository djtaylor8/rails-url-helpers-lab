class ChangeActiveColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :active, :string, default: "false"
  end
end
