class Cour < ApplicationRecord
	validates :coef, length:{maximum: 1,wrong_length: "%{count} à determiner...", too_long:"Le nombre %{value} n'est pas authorisé ..."}

  validates_each :nom_c do |record, attr, value|
    record.errors.add(attr, 'La premiere lettre doit etre une majuscule...') if value =~ /\A[[:lower:]]/
  end
#validates :nom_c, presence: {message: "le nom est obligatoire..."}

  validates :nom_c,
    uniqueness: {
      # object = person object being validated
      # data = { model: "Person", attribute: "Username", value: <username> }
      message: ->(object, data) do
        "Hey #{object}!, #{data[:value]} is taken already! Try again #{Time.zone.tomorrow}"
      end
    }
end
