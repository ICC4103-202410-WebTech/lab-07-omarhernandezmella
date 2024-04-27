# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#User.create(name: 'Felipe Vicencio', email: 'FV@gmail.com', password: 'Felipevicencio1234')
#User.create(name: 'Omar Hernandez', email: 'OH@gmail.com', password: 'OmarHernandez1234')
#User.create(name: 'Lukas Wolff', email: 'LW@gmail.com', password: 'LukasWolff1234')
#User.create(name: 'Ignacio Mella', email: 'IM@gmail.com', password: 'IgnacioMella1234')
#User.create(name: 'Benjamin Figari', email: 'BF@gmail.com', password: 'BenjaminFigari1234')


#Tag.create!(title: "Fyp")
#Tag.create!(title: "Viral")
#Tag.create!(title: "En casa")
#Tag.create!(title: "Meditacion")
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
post.tags << tag

user = User.find(72)
tag = Tag.find(37)
post = user.posts.create!(
  title: 'Cómo preparar una deliciosa lasaña',
  content: 'Hoy quiero compartir con ustedes mi receta favorita de lasaña. Para hacerla, necesitarán...',
  published_at: Time.now - 3.days,
  answers_count: 12,
  likes_count: 25
)
post.tags << tag

user = User.find(73)
tag = Tag.find(38)
post = user.posts.create!(
  title: 'Reflexiones sobre el cambio climático',
  content: 'El cambio climático es un tema que nos afecta a todos y debemos tomar medidas urgentes para combatirlo...',
  user_id: 2,
  published_at: Time.now - 5.days,
  answers_count: 8,
  likes_count: 20
)
post.tags << tag

user = User.find(74)
tag = Tag.find(38)
post = user.posts.create!(
  title: 'Mis experiencias como voluntario en África',
  content: 'Recientemente tuve la oportunidad de ser voluntario en un proyecto de ayuda en África y quiero compartir con ustedes...',
  user_id: 2,
  published_at: Time.now - 10.days,
  answers_count: 15,
  likes_count: 30
)
post.tags << tag

user = User.find(75)
tag = Tag.find(39)

post = user.posts.create!(
  title: 'Recomendaciones de libros para el verano',
  content: 'El verano está llegando y es el momento perfecto para relajarse con un buen libro. Aquí les dejo algunas de mis recomendaciones...',
  user_id: 4,
  published_at: Time.now - 7.days,
  answers_count: 6,
  likes_count: 18
)
post.tags << tag

user = User.find(72)
tag = Tag.find(38)

post = user.posts.create!(
  title: 'Consejos para mejorar la productividad laboral',
  content: 'Me gustaría compartir con ustedes algunos consejos que me han ayudado a mejorar mi productividad en el trabajo...',
  user_id: 5,
  published_at: Time.now - 2.days,
  answers_count: 10,
  likes_count: 22
)
post.tags << tag

user = User.find(73)
tag = Tag.find(37)

post = user.posts.create!(
  title: 'Viaje a Japón: una experiencia inolvidable',
  content: 'Recientemente tuve la oportunidad de viajar a Japón y quiero contarles sobre todas las maravillas que pude descubrir...',
  user_id: 3,
  published_at: Time.now - 9.days,
  answers_count: 18,
  likes_count: 35
)
post.tags << tag

user = User.find(75)
tag = Tag.find(39)

post = user.posts.create!(
  title: 'Consejos para cuidar plantas de interior',
  content: 'Si eres amante de las plantas de interior, aquí tienes algunos consejos para mantenerlas saludables y felices...',
  user_id: 1,
  published_at: Time.now - 4.days,
  answers_count: 7,
  likes_count: 15
)

post.tags << tag

user = User.find(73)
tag = Tag.find(36)

post = user.posts.create!(
  title: 'Cómo mejorar tu alimentación con pequeños cambios',
  content: 'No es necesario hacer cambios drásticos en tu dieta para mejorar tu salud. Aquí te doy algunas ideas simples y efectivas...',
  user_id: 4,
  published_at: Time.now - 8.days,
  answers_count: 9,
  likes_count: 24
)
post.tags << tag

user = User.find(72)
tag = Tag.find(40)
post = user.posts.create!(
  title: 'Aprende a meditar: beneficios y técnicas básicas',
  content: 'La meditación puede tener un gran impacto en tu bienestar físico y mental. Aquí te enseño algunas técnicas básicas para empezar...',
  user_id: 3,
  published_at: Time.now - 6.days,
  answers_count: 11,
  likes_count: 28
)
post.tags << tag

user = User.find(75)
tag = Tag.find(40)
post = user.posts.create!(
  title: 'Ideas para organizar una fiesta temática en casa',
  content: 'Organizar una fiesta temática puede ser una excelente manera de divertirse con amigos y familiares. Aquí tienes algunas ideas para inspirarte...',
  user_id: 2,
  published_at: Time.now - 1.days,
  answers_count: 13,
  likes_count: 30
)
post.tags << tag




