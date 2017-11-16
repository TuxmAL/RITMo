class CreateQualifiche < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifiche do |t|
      t.string :qualifica

      t.timestamps
    end
  end
end
