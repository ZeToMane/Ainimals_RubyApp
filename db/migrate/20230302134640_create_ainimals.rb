class CreateAinimals < ActiveRecord::Migration[7.0]
  def change
    create_table :ainimals do |t|
      t.string :name
      t.string :class
      t.text :image
      t.text :desc

      t.timestamps
    end
  end
end
