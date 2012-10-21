class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :listings

      t.timestamps
    end
  end
end
