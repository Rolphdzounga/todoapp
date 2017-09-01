class CreateEleves < ActiveRecord::Migration[5.1]
  def change
    create_table :eleves do |t|
      t.string :nom
      t.string :prenom
      t.integer :age

      t.timestamps
    end
  end
end
