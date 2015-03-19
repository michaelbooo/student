class CreateCountryInfos < ActiveRecord::Migration
  def change
    create_table :country_infos do |t|
      t.integer :country_id
      t.string :country_name

      t.timestamps
    end
  end
end
