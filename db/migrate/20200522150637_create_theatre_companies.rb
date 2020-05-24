class CreateTheatreCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :theatre_companies do |t|
      t.name
      t.name_kana
      t.postcode
      t.prefecture
      t.address
      t.website
      t.establish

      t.timestamps
    end
  end
end
