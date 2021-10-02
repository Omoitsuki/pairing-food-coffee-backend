class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.references :continent, foreign_key: true
      t.string :name
      t.text :discription
      t.float :bitter
      t.float :sour
      t.float :rich
      t.timestamps
    end
  end
end
