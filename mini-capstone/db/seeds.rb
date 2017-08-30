# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


weapon = Weapon.create(
                      name: "Buster Sword",
                      price: 99,
                      image_url: "http://i.ebayimg.com/00/s/MzU4WDUwMA==/z/c-0AAOxyOlhSsl0N/$_3.JPG?set_id=2",
                      description: "Final Fantasy Cloud Strife Buster Sword"
                      )
weapon.save

weapon = Weapon.create(
                      name: "Blades of Chaos",
                      price: 150,
                      image_url: "https://i.ebayimg.com/images/g/ULIAAOSwstxVOsE2/s-l300.jpg",
                      description: "The Blades of Chaos, forged in the foulest depths of Hades.
                      Once attached the blades remained so,
                      chained and seared to the flesh, a part of the bearer's body. A permanent reminder of Kratos' pledge."
                      )
weapon.save

weapon = Weapon.create(
                      name: "Ebony and Ivory",
                      price: 300,
                      image_url: "https://vignette4.wikia.nocookie.net/devilmaycry/images/4/4f/DMC1_-_Ebony%26Ivory.png/revision/latest?cb=20150629102610",
                      description: "Dante's trademark pair of personally customized, semi-automatic pistols, designed to rapidly fire bullets instilled with his demonic power"
                      )
weapon.save

weapon = Weapon.create(
                      name: "Sword of Sparda",
                      price: 175,
                      image_url: "https://static.comicvine.com/uploads/original/12/123503/2344524-Sparda_1.jpg",
                      description: "The Sparda and its unawakened form, the Force Edge, is the beloved demon-forged sword wielded by the The Dark Knight Sparda himself"
                      )
weapon.save

weapon = Weapon.create(
                      name: "Keyblade",
                      price: 100,
                      image_url: "https://userscontent2.emaze.com/images/a3e7b9b8-253a-4ab5-92f8-1be0dbf4952b/f15986e6dd618d8fb264d312af1eeaa0.png",
                      description: "These weapons play an important role in the battle between darkness and light."
                      )
weapon.save

weapon = Weapon.create(
                      name: "Golden Gun",
                      price: 900,
                      image_url: "http://cdni.condenast.co.uk/642x390/a_c/1791640_GQ_30May12_pr_b_642x390.jpg",
                      description: "Gun from 007 GoldenEye"
                      )
weapon.save
