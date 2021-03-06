class CreateTheatreCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :theatre_companies do |t|
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :image
      t.integer :postal_code, null: false
      t.string :prefecture, null: false
      t.string :address, null: false
      t.string :website
      t.integer :establish
      t.references :member, foreign_key: { to_table: :users}, unique: true
      t.text :profile
      t.string :contact
      t.references :founder, foreign_key: { to_table: :users}, null: false

      t.timestamps
    end
  end
end
