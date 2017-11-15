class CreateRichieste < ActiveRecord::Migration[5.1]
  def change
    create_table :richieste do |t|
      t.primary_key :id
      t.string :richiesta

      t.timestamps
    end
  end
end
