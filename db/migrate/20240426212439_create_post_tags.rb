class CreatePostTags < ActiveRecord::Migration[7.1]
  def change
    create_table :post_tags do |t|
      t.belongs_to :post, foreign_key: true, null: false
      t.belongs_to :tag, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
