class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :concert, index: true
      t.string :comment_text

      t.timestamps null: false
    end
  end
end
