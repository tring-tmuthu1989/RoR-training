class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :created_by
      t.datetime :created_on

      t.timestamps
    end
  end
end
