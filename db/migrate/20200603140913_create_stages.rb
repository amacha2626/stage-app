class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.string :title, null: false
      t.date :startperiod, null: false
      t.date :lastperiod, null: false
      t.string :theater, null: false
      t.string :image
      t.string :member
      t.string :writer
      t.string :director
      t.integer :lowestprice, null: false
      t.integer :highestprice, null: false
      t.string :website
      t.text :timetable
      t.text :explanation, null: false
      t.text :etc
      t.string :category, null: false
      t.references :theatre_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
