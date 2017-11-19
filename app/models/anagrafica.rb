class Anagrafica < ApplicationRecord
  belongs_to :sesso
  belongs_to :comune, foreign_key: 'luogonascita_id'
  belongs_to :parente
  belongs_to :parentela
  belongs_to :utente
end
