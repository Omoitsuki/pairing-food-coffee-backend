class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :coffee, foreign_key: true
      t.references :food, foreign_key: true
      t.timestamps
    end
  end
end
