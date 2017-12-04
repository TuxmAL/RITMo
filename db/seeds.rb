# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Utente.create(id: 1, 'user_name': 'admin', 'password_digest': '', 'name': 'Amministratore', 
              'attivo': 1, 'amministratore': 1, 'note': 'Amministratore della procedura.')

Sesso.create([{ id: 1, sesso: 'Maschio' }, { id: 2, sesso: 'Femmina' }])

Qualifica.create([{ id: 1, qualifica: 'Dirigente' },
                  { id: 2, qualifica: 'Area Amm.Gestionale' },
                  { id: 3, qualifica: 'Area/Tec.Scient.Elab.Dati' },
                  { id: 4, qualifica: 'Già Prof.Ordinario' },
                  { id: 5, qualifica: 'Professore Ordinario' },
                  { id: 6, qualifica: 'Professore Ordinario' },
                  { id: 7, qualifica: 'Già Coll. Tecnico' },
                  { id: 8, qualifica: 'Ricercatore Confermato' },
                  { id: 9, qualifica: 'Già Area Socio Sanitaria' },
                  { id: 10, qualifica: 'Ricercatore non Confermato' },
                  { id: 11, qualifica: 'Ricercatore' },
                  { id: 12, qualifica: 'Area Biblioteche' },
                  { id: 13, qualifica: 'Area Tecnica - Elaborazioni Dati' },
                  { id: 14, qualifica: 'Già Area Amm. Gestionale' },
                  { id: 15, qualifica: 'Già Area Amministrativa' },
                  { id: 16, qualifica: 'Area Amministrativa' },
                  { id: 17, qualifica: 'Già Area Tecnica /Elaborazione /Dati.' },
                  { id: 18, qualifica: 'Già Professore Associato' },
                  { id: 19, qualifica: 'Già C.Tecnico di Radiologia' },
                  { id: 20, qualifica: 'Già Funz. Amministartivo' },
                  { id: 21, qualifica: 'Area Serv. Generali e Tecnici' },
                  { id: 22, qualifica: 'Già Area Socio Sanitario' },
                  { id: 23, qualifica: 'Area Socio-Sanitaria' },
                  { id: 24, qualifica: 'Professore Associato' },
                  { id: 25, qualifica: 'Già Assistente Ordinario' },
                  { id: 26, qualifica: 'Già Direttore Amm.vo' },
                  { id: 27, qualifica: 'Già Direttore Amm.vo' },
                  { id: 28, qualifica: 'Già Area Amministativa' },
                  { id: 29, qualifica: 'Area Amministrativa' },
                  { id: 30, qualifica: 'Professore Associato' },
                  { id: 31, qualifica: 'Area Amministrativa' },
                  { id: 32, qualifica: 'Area Amm.va Gestionale' },
                  { id: 33, qualifica: 'Ricercatore in Storia dell\'Arte Medioevale' },
                  { id: 34, qualifica: 'Area Sevizi Generali e Tecnici' },
                  { id: 35, qualifica: 'Area Tecnica, Tecnico-Scientifica ed Elab. Dati' },
                  { id: 36, qualifica: 'Area Servizi Generali e Tecnici' },
                  { id: 37, qualifica: 'Area Amministrativa Gestionale' },
                  { id: 38, qualifica: 'Area Medico-Odontoiatrica e Socio Sanitaria' }
                 ])
TipoTessera.create([{ id: 1, tipo: 'Uso personale' }, { id: 2, tipo: 'Familiari' }])

StatoCivile.create([{ id: 1, stato: 'Celibe', sesso_id: 1 },
                    { id: 2, stato: 'Nubile', sesso_id: 2 },
                    { id: 3, stato: 'Coniugato', sesso_id: 1 },
                    { id: 4, stato: 'Coniugata', sesso_id: 2 },
                    { id: 5, stato: 'Vedovo', sesso_id: 1 },
                    { id: 6, stato: 'Vedova', sesso_id: 2 },
                    { id: 7, stato: 'Divorziato', sesso_id: 1 },
                    { id: 8, stato: 'Divorziata', sesso_id: 2 },
                    { id: 9, stato: 'Libero', sesso_id: 1 },
                    { id: 10, stato: 'Libera', sesso_id: 2 },
                    { id: 11, stato: 'Omissis a.35 DPR 445/2000', sesso_id: 1 },
                    { id: 12, stato: 'Omissis a.35 DPR 445/2000', sesso_id: 2 }
                  ])
Richiesta.create([{ id: 1, richiesta: 'Nuova tessera'}, { id: 2, richiesta: 'Variazione/Proroga' }
                 ])

Parentela.create([{ id: 1, parentela: 'Marito' },
                  { id: 2, parentela: 'Moglie' },
                  { id: 3, parentela: 'Figlio' },
                  { id: 4, parentela: 'Figlia' }
                 ])
