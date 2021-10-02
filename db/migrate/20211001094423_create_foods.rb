class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :discription
      t.float :taste
      t.float :sweet

      t.timestamps
    end
  end
end
