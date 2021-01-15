# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

Deliver.create(compagnie: 'abs', region: '000', ville: 'abj', telephone: 000, logo: 'https://www.berluti.com/dw/image/v2/BBMR_PRD/on/demandware.static/-/Sites-masterCatalog_Berluti/default/dwe2d814d6/images/S5259-005_pulse-canvas-and-leather-sneaker_black-white-blue_berluti_01.jpg?sw=320')
Deliver.create(compagnie: "qqq", region: "111", ville: "bke", telephone: 111, logo: "https://www.berluti.com/dw/image/v2/BBMR_PRD/on/demandware.static/-/Sites-masterCatalog_Berluti/default/dw576dced6/images/S5259-007_pulse-canvas-and-leather-sneaker_black-white-orange_berluti_01.jpg?sw=320")

Deliver.create(compagnie: "kkk", region: "222", ville: "daloa", telephone: 222, logo: "")
Deliver.create(compagnie: "jjj", region: "333", ville: "yakro", telephone: 333, logo: "")

Notation.create(deliver_id: 1, nom: "Ben", commentaire: "bon servir")
Notation.create(deliver_id: 1, nom: "jack", commentaire: "moyen servir")

Notation.create(deliver_id: 1, nom: "jack", commentaire: "moyen servir")
Notation.create(deliver_id: 1, nom: "Ben", commentaire: "bon servir")
