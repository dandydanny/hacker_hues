class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.text    :text
      t.timestamps

      t.belongs_to :user
      t.belongs_to :post
    end
  end
end
