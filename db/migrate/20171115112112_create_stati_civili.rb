class CreateStatiCivili < ActiveRecord::Migration[5.1]
  def change
    create_table :stati_civili do |t|
      t.primary_key :id
      t.string :stato
      t.reference :sesso

      t.timestamps
    end
  end
end
