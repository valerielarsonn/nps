class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :fullname
      t.string :city
      t.string :statecode
      t.string :hours
      t.string :url

      t.timestamps
    end
  end
end
