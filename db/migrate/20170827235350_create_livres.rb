class CreateLivres < ActiveRecord::Migration[5.1]
  def change
    create_table :livres do |t|
      t.string :nom
      t.belongs_to :auteur, index: { unique: true }, foreign_key: true
      t.datetime :publie_le

      t.timestamps
    end
  end
end
