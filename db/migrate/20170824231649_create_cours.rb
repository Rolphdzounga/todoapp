class CreateCours < ActiveRecord::Migration[5.1]
  def change
    create_table :cours do |t|
      t.string :nom_c
      t.integer :coef

      t.timestamps
    end
  end
	say_with_time 'Waiting for a while' do
	  sleep 10
	  250
	end
end
