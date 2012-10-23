class CreateMapQuests < ActiveRecord::Migration
  def change
    create_table :map_quests do |t|

      t.timestamps
    end
  end
end
