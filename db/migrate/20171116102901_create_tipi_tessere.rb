class CreateTipiTessere < ActiveRecord::Migration[5.1]
  def change
    create_table :tipi_tessere do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
