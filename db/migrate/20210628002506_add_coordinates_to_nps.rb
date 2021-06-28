class AddCoordinatesToNps < ActiveRecord::Migration[6.1]
  def change
    add_column :nps, :coordinates, :string
  end
end
