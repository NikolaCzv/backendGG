class AddGameIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :gameId, :integer
  end
end
