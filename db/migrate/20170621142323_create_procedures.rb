class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.string :name, null: false
      t.integer :experiment_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
