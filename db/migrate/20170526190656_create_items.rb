class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :color
      t.string :size
      t.string :status

      t.timestamps
    end
  end
end
