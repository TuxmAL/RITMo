class CreateTessere < ActiveRecord::Migration[5.1]
  def change
    create_table :tessere do |t|
      t.primary_key :id
      t.string :tipo

      t.timestamps
    end
  end
end
