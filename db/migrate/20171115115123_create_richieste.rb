class CreateRichieste < ActiveRecord::Migration[5.1]
  def change
    create_table :richieste do |t|
      t.string :richiesta

      t.timestamps
    end
  end
end
