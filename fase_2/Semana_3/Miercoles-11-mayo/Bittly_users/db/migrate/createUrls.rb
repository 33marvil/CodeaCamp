class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.integer :id_user
      t.string :long_url
      t.string :short_url
      t.integer :clock_coun, :default => 0
 
      t.timestamps
    end
  end
end
