class CreateContinents < ActiveRecord::Migration[6.1]
  def change
    create_table :continents do |t|
      t.string :county_name
      t.string :district_name

      t.timestamps
    end
  end
end
