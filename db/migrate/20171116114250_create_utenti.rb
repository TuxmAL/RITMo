class CreateUtenti < ActiveRecord::Migration[5.1]
  def change
    create_table :utenti do |t|
      t.string :user_name
      t.string :password_digest
      t.string :name
      t.boolean :attivo
      t.boolean :amministratore
      t.text :note

      t.timestamps
    end
  end
end
