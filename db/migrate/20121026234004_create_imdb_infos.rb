class CreateImdbInfos < ActiveRecord::Migration
  def change
    create_table :imdb_infos do |t|

      t.timestamps
    end
  end
end
