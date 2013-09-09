
module Pluto

class CreateDb < ActiveRecord::Migration
    
  def up
    create_table :feeds do |t|
      t.string  :title,    :null => false
      t.string  :url,      :null => false
      t.string  :feed_url, :null => false
      t.string  :key,      :null => false
      t.timestamps
    end

    create_table :items do |t|
      t.string   :title   # todo: add some :null => false ??
      t.string   :url
      t.string   :guid
      t.text     :content
      t.datetime :published_at
      t.references :feed, :null => false
      t.timestamps
    end
  end
    
  def down
    raise ActiveRecord::IrreversibleMigration
  end
    
end  # class CreateDb
   
end  # module Pluto
