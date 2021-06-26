class CreateNps < ActiveRecord::Migration[6.1]
  def change
    create_table :nps do |t|
      t.string :name
      t.string :posting
      t.string :image

      t.timestamps
    end
  end
end
