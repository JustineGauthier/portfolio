# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Categorie.destroy_all

puts 'Creating categories'
categorie1 = Categorie.create!(name: 'Application mobile')
categorie2 = Categorie.create!(name: 'Site fonctionnel')
categorie3 = Categorie.create!(name: 'Site one page')

puts 'Creating projects'
Project.create!(title: 'Mini Crottes', description: 'Clone de AirBnb - Site de location d’animaux mignons
  pour la journée.', url: 'https://mini-crottes854.herokuapp.com/', creation_date: 20220527, categorie: categorie2)
Project.create!(title: 'My landing page', description: 'Premier essai de CSS sur une demi-journée', url: 'https://
  justinegauthier.github.io/profile/', creation_date: 20220505, categorie: categorie3)
Project.create!(title: 'Challenge Accepted !', description: 'Progressive app de lancement de défis entre
  amis et familles.', url: 'https://www.challengeaccepted.live/', creation_date: 20220610, categorie: categorie1)

puts 'Finished !'
