class CreateQualifiche < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifiche do |t|
      t.primary_key :id
      t.string :qualifica

      t.timestamps
    end
  end
end
