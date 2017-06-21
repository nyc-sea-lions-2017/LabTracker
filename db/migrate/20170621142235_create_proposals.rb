class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :title, null: false
      t.string :summary, null: false
      t.string :hypothesis, null: false
      t.string :status, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
