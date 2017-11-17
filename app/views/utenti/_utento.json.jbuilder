json.extract! utente, :id, :user_name, :name, :attivo, :amministratore, :note, :created_at, :updated_at
json.url utente_url(utente, format: :json)
