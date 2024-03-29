class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :message, foreign_key: true
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end
