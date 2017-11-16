class CreateSessi < ActiveRecord::Migration[5.1]
  def change
    create_table :sessi do |t|
      t.string :sesso

      t.timestamps
    end
  end
end
