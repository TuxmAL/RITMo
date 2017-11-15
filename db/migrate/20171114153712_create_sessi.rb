class CreateSessi < ActiveRecord::Migration[5.1]
  def change
    create_table :sessi do |t|
      t.primary_key :id
      t.string :sesso

      t.timestamps
    end
  end
end
