class CreateObservations < ActiveRecord::Migration[5.1]
  def change
    create_table :observations do |t|
      t.integer :observer_id, class_name: 'User', foreign_key: true
      t.integer :oberservable_id, null: false
      t.string :observable_type, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
