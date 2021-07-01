class AddColumnParkIdToNps < ActiveRecord::Migration[6.1]
  def change
    add_column :nps, :park_id, :string
  end
end
