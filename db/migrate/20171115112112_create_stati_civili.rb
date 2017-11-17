class CreateStatiCivili < ActiveRecord::Migration[5.1]
  def change
    create_table :stati_civili do |t|
      t.string :stato
      t.references :sesso

      t.timestamps
    end
  end
end
