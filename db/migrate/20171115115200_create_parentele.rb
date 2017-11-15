class CreateParentele < ActiveRecord::Migration[5.1]
  def change
    create_table :parentele do |t|
      t.primary_key :id
      t.string :parentela

      t.timestamps
    end
  end
end
