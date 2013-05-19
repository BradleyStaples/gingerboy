class UpdatePortfoliosWithDisplayOrder < ActiveRecord::Migration
  def up
    add_column :portfolios, :display_order, :integer
    Portfolio.reset_column_information

    p = Portfolio.find_by_name('My New KY Home')
    p.display_order = 5
    p.save!

    p = Portfolio.find_by_name('Arnold\'s Coffee')
    p.display_order = 6
    p.save!

    p = Portfolio.find_by_name('Communicare')
    p.display_order = 7
    p.save!

    p = Portfolio.find_by_name('Dawn Bland')
    p.display_order = 8
    p.save!

    p = Portfolio.find_by_name('Roundstone Native Seed')
    p.display_order = 4
    p.save!

    p = Portfolio.find_by_name('Hardin County Schools PAC')
    p.display_order = 9
    p.save!

    p = Portfolio.find_by_name('Tri-State Healthcare I.T. Conference')
    p.display_order = 10
    p.save!

    p = Portfolio.find_by_name('Glyde (Desktop)')
    p.display_order = 1
    p.save!

    p = Portfolio.find_by_name('Glyde (Mobile)')
    p.display_order = 3
    p.save!

    p = Portfolio.find_by_name('Sell Smart')
    p.display_order = 2
    p.save!
  end

  def down
    remove_column :portfolios, :display_order
  end
end
