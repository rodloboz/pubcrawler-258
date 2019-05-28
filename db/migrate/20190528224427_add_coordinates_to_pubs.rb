class AddCoordinatesToPubs < ActiveRecord::Migration[5.2]
  def change
    add_column :pubs, :latitude, :float
    add_column :pubs, :longitude, :float
  end
end
