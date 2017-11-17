class CreateAnagrafiche < ActiveRecord::Migration[5.1]
  def change
    create_table :anagrafiche do |t|
      t.string :nome
      t.string :cognome
      t.references :sesso, foreign_key: true
      t.references :luogonascita, foreign_key: true
      t.date :datanascita
      t.references :parente, foreign_key: true
      t.references :parentela, foreign_key: true
      t.string :recapiti
      t.text :note
      t.references :utente, foreign_key: true

      t.timestamps
    end
  end
end
