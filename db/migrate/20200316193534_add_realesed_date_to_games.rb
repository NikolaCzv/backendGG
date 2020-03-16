class AddReleasedDateToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :released_date, :string
  end
end
