class CreateExperiments < ActiveRecord::Migration[5.1]
  def change
    create_table :experiments do |t|
      t.string :results, null: false
      t.string :conclusions
      t.integer :proposal_id, foreign_key: true, null: false
      t.integer :experimenter_id, foreign_key: true, class_name: 'User'

      t.timestamps
    end
  end
end
