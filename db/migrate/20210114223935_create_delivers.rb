class CreateDelivers < ActiveRecord::Migration[6.0]
  def change
    create_table :delivers do |t|
      t.string :compagnie
      t.string :region
      t.string :ville
      t.integer :telephone
      t.string :logo

      t.timestamps
    end
  end
end
