class CreateComuni < ActiveRecord::Migration[5.1]
  def change
    create_table :comuni do |t|
      t.string :codice
      t.string :comune
      t.string :cap
      t.string :provincia
      t.string :istat
      t.boolean :capoluogo

      t.timestamps
    end
  end
end
