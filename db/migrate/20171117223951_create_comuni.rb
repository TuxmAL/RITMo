class CreateComuni < ActiveRecord::Migration[5.1]
  def change
    create_table :comuni do |t|
      t.integer :codice
      t.string :comune
      t.string :cap
      t.string :provincia
      t.string :istat
      t.integer :provincia_id

      t.timestamps
    end
  end
end
