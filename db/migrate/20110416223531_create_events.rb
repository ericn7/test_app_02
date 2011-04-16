class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.date :event_date
      t.text :description
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
