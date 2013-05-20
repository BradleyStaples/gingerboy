class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :display_order
      t.string :name
      t.string :url
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
