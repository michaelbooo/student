class CreateTypeInfos < ActiveRecord::Migration
  def change
    create_table :type_infos do |t|
      t.integer :type_id
      t.string :type_name

      t.timestamps
    end
  end
end
