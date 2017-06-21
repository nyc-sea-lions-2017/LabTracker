class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :summary, null: false
      t.string :hypothesis, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
