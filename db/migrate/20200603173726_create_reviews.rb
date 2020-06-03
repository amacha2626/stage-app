class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text, null: false
      t.references :user, null: false, foreign_key: true
      t.references :stage, null: false, foreign_key: true
      t.integer :score, null: false
      t.boolean :spoiler, null: false

      t.timestamps
    end
  end
end
