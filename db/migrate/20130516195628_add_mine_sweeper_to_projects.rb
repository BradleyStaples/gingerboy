class AddMineSweeperToProjects < ActiveRecord::Migration
  def change
    Project.create(
        :name => 'Minesweeper',
        :slug => 'minesweeper',
        :url => nil,
        :description => 'A simple game of minesweeper that lets you flag mines, show empty squares, keeps score, cheat, and lets you save and load your game.',
        :blurb => 'A simple game of minesweeper.',
        :thumb => nil,
        :image => nil,
        :github => 'https://github.com/BradleyStaples/minesweeper'
    )
  end
end
