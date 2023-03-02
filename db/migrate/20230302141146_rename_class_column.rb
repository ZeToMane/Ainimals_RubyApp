class RenameClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :ainimals, :class, :animaltype
  end
end
