class CreateNotations < ActiveRecord::Migration[6.0]
  def change
    create_table :notations do |t|
      t.belongs_to :deliver, null: false, foreign_key: true

      t.string :nom
      t.string :commentaire

      t.timestamps
    end
  end
end
