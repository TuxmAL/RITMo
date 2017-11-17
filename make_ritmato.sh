rvm use 2.4.1
rails new RiTMATo -d mysql
rake time:zones
bundle install
rails generate model sesso sesso:string
rails generate model tessera tipo:string
rails generate model stato_civile stato:string sesso:reference
rails generate model qualifica qualifica:string
rails generate model tipo_tessera tipo:string 
rails generate model richiesta richiesta:string
rails generate model parentela parentela:string
rails g scaffold utente user_name:string password:digest name:string attivo:boolean amministratore:boolean note:text modifica_pwd:boolean data_modifica_pwd:data gpx:boolean gtm:boolean uid:integer
rails g scaffold anagrafica nome:string cognome:string sesso:references luogonascita:references datanascita:date parente:references parentela:references recapiti:string note:text utente:references
rails g scaffold tessera tiporichiesta:references anagrafico:references tipo_tessera:references intestatario:references qualifica:references statura: string capelli:string occhi:string segni_particolari:string residenza:references indirizzo:string statocivile:references numero_tessera: integer data_rilascio:date data_convalida:date variazioni_uno:text variazioni_due:text variazioni_tre:text note:text annullata:boolean stampata:boolean utente:references
rails generate bootstrap:install static
rails g bootstrap:layout
rake db:migrate
rails g bootstrap:themed utente
rails g bootstrap:themed anagrafica
rails g bootstrap:themed tessera

