class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :commenter_id, class_name:'User',foreign_key: true, null: false
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
