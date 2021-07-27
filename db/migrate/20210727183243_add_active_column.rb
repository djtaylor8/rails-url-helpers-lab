class AddActiveColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :active, :integer, default: 0
  end
end
