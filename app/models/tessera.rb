class Tessera < ApplicationRecord
  belongs_to :tiporichiesta
  belongs_to :anagrafico
  belongs_to :tipo_tessera
  belongs_to :intestatario
  belongs_to :qualifica
  belongs_to :residenza
  belongs_to :statocivile
  belongs_to :utente
end
