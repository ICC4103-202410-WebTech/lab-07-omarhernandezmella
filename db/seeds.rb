# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(name: 'Felipe Vicencio', email: 'FV@gmail.com', password: 'Felipevicencio1234')
User.create(name: 'Omar Hernandez', email: 'OH@gmail.com', password: 'OmarHernandez1234')
User.create(name: 'Lukas Wolff', email: 'LW@gmail.com', password: 'LukasWolff1234')
User.create(name: 'Ignacio Mella', email: 'IM@gmail.com', password: 'IgnacioMella1234')
User.create(name: 'Benjamin Figari', email: 'BF@gmail.com', password: 'BenjaminFigari1234')


Tag.create!(title: "Fyp")
Tag.create!(title: "Viral")
Tag.create!(title: "En casa")
Tag.create!(title: "Meditacion")
Tag.create!(title: "Alimentacion")

user = User.find(71)
tag = Tag.find(36)
post = user.posts.create!(
  title: 'Reflexiones sobre el cambio climático',
  content: 'El cambio climático es un tema que nos afecta a todos y debemos tomar medidas urgentes para combatirlo...',
  user_id: 2,
  published_at: Time.now - 5.days,
  answers_count: 8,
  likes_count: 20
)
# Asignar etiquetas aleatorias a la publicación
post.tags << tag






