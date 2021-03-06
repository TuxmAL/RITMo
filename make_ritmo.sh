rvm use 2.4.1
rails new RiTMo -d mysql
#rake time:zones
bundle install
rails generate model sesso sesso:string
rails generate model tessera tipo:string
rails generate model stato_civile stato:string sesso:reference
rails generate model qualifica qualifica:string
rails generate model tipo_tessera tipo:string 
rails generate model richiesta richiesta:string
rails generate model parentela parentela:string
rails generate scaffold comune codice:string comune:string cap:string provincia:string istat:string capoluogo:boolean
rails generate scaffold utente user_name:string password:digest name:string attivo:boolean amministratore:boolean note:text modifica_pwd:boolean data_modifica_pwd:data gpx:boolean gtm:boolean uid:integer
rails generate scaffold anagrafica nome:string cognome:string sesso:references luogonascita:references datanascita:date parente:references parentela:references recapiti:string note:text utente:references
rails generate scaffold tessera tiporichiesta:references anagrafico:references tipo_tessera:references intestatario:references qualifica:references statura: string capelli:string occhi:string segni_particolari:string residenza:references indirizzo:string statocivile:references numero_tessera: integer data_rilascio:date data_convalida:date variazioni_uno:text variazioni_due:text variazioni_tre:text note:text annullata:boolean stampata:boolean utente:references
rails generate bootstrap:install static
rails generate bootstrap:layout
rake db:migrate
rake db:seed
rails generate bootstrap:themed utenti
rails generate bootstrap:themed anagrafiche
rails generate bootstrap:themed tessere
rails generate bootstrap:themed comuni

