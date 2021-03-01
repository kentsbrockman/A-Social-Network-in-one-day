class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content, null: false
      t.references :author, index: true
      t.references :article, index: true
      
      t.timestamps
    end
  end
end
