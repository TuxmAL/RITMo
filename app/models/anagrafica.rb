class Anagrafica < ApplicationRecord
  belongs_to :sesso
  belongs_to :comune, foreign_key: 'luogonascita_id'
  belongs_to :parentela
  belongs_to :parente, class_name: 'Anagrafica', foreign_key: 'parente_id', optional: true
  belongs_to :utente
end
