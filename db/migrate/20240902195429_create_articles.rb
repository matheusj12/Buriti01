class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :content
      t.datetime :published_at
      t.string :author_name

      t.timestamps
    end
  end
end
