class CreateTessere < ActiveRecord::Migration[5.1]
  def change
    create_table :tessere do |t|
      t.references :tiporichiesta, foreign_key: true
      t.references :anagrafico, foreign_key: true
      t.references :tipo_tessera, foreign_key: true
      t.references :intestatario, foreign_key: true
      t.references :qualifica, foreign_key: true
      t.string :statura
      t.string :string
      t.string :capelli
      t.string :occhi
      t.string :segni_particolari
      t.references :residenza, foreign_key: true
      t.string :indirizzo
      t.references :statocivile, foreign_key: true
      t.string :numero_tessera
      t.string :integer
      t.date :data_rilascio
      t.date :data_convalida
      t.text :variazioni_uno
      t.text :variazioni_due
      t.text :variazioni_tre
      t.text :note
      t.boolean :annullata
      t.boolean :stampata
      t.references :utente, foreign_key: true

      t.timestamps
    end
  end
end
