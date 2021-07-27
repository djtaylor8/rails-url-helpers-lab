class ChangeActiveColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :students, :active, :boolean 
    reversible do |dir|
      dir.up { Student.update_all active: false }
    end
  end
end
