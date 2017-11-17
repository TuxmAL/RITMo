class Anagrafica < ApplicationRecord
  belongs_to :sesso
  belongs_to :luogonascita
  belongs_to :parente
  belongs_to :parentela
  belongs_to :utente
end
