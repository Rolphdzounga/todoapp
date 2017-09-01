class Todo < ApplicationRecord
	validates :name, presence: {message: "La saisie du nom est obligatoire..."}
	validates :name, length: {minimum: 3 , message: "Le nom doit avoir au moins 3 caratères..."}
	validates :description, presence: {message: "La description est obligatoire..."}
  def a_method_used_for_validation_purposes
    errors.messages[:name] << "cannot contain the characters !@#%*()_-+="
  end


end