class UpdatePortfolioWithGlyde < ActiveRecord::Migration
  def change
    Portfolio.create!(
        :name => 'Glyde (Desktop)',
        :url => 'http://glyde.com',
        :description => 'Glyde\'s desktop website.',
        :thumb => nil
    )
    Portfolio.create!(
        :name => 'Glyde (Mobile)',
        :url => 'http://m.glyde.com',
        :description => 'Glyde\'s mobile website.',
        :thumb => nil
    )
    Portfolio.create!(
        :name => 'Sell Smart',
        :url => 'http://glyde.com/sell-smart',
        :description => 'Sell Smart.',
        :thumb => nil
    )
  end
end
