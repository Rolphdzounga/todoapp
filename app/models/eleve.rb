class Eleve < ApplicationRecord
	validates :nom, presence:true
  after_initialize do |eleve|
    puts "Objet crée avec succès!!!"
  end
 
  after_find do |eleve|
    puts "Objet trouvé!!!"
  end
end
