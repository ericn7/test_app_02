class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.date :publish_date
      t.text :article_text
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
