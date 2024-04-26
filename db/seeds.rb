PostTag.delete_all
Tag.delete_all
Post.delete_all
User.delete_all

users = [
  { name: 'Luke Skywalker', email: 'l.skywalker@starwars.reb', password: 'MayTheForceBeWithYou' },
  { name: 'Darth Vader', email: 'd.vader@starwars.emp', password: 'IAmYourFather' },
  { name: 'Boba Fett', email: 'b.fett@starwars.boun', password: 'IMissMyDad' },
  { name: 'Kylo Ren', email: 'k.ren@starwars.1ord', password: 'BenSwolo' },
  { name: 'Han Solo', email: 'h.solo@starwars.reb', password: 'MyleniumFalcon' }
]

users.each { |user| User.create!(user) }

posts = [
  { title: "I am fast", content: "Fast as f**k boiii", user: User.find_by(name: "Han Solo"), published_at: '2017-03-11 09:00:00', answers_count: 3, likes_count: 200304 },
  { title: "Sad day for the rebelion", content: "Miss you Chewey", user: User.find_by(name: "Han Solo"), published_at: '2018-05-15 11:00:00', answers_count: 50, likes_count: 123415 },
  { title: "Dominating the galaxy", content: "Damn boy, this star goes pew-pew", user: User.find_by(name: "Darth Vader"), published_at: '2019-07-20 13:00:00', answers_count: 14905, likes_count: 5732627 },
  { title: "Looking for my son", content: "I thought I burned him on Mustafar", user: User.find_by(name: "Darth Vader"), published_at: '2020-09-25 15:00:00', answers_count: 1, likes_count: 6 },
  { title: "Lost in Mos Esly", content: "Just woke up, where are my clothes?", user: User.find_by(name: "Boba Fett"), published_at: '2021-11-29 17:00:00', answers_count: 4, likes_count: 13256 },
  { title: "New boss around", content: "Im the new mayor on Mos Esly, pretty exited right now", user: User.find_by(name: "Boba Fett"), published_at: '2022-01-03 19:00:00', answers_count: 903, likes_count: 302815 },
  { title: "Im better", content: "My gun is bigger @Darth Vader", user: User.find_by(name: "Kylo Ren"), published_at: '2023-03-08 21:00:00', answers_count: 13415, likes_count: 394198 },
  { title: "Better blade", content: "Three blades are better than one", user: User.find_by(name: "Kylo Ren"), published_at: '2024-05-12 23:00:00', answers_count: 35896, likes_count: 5889751 },
  { title: "New friends", content: "Just met a green goblin, wants to teach me something called the force", user: User.find_by(name: "Luke Skywalker"), published_at: '2025-07-17 01:00:00', answers_count: 1847107, likes_count: 5847185 },
  { title: "Easy win team", content: "Just dropped a bomb on the Death Star, @Darth Vader gonna cry", user: User.find_by(name: "Luke Skywalker"), published_at: '2026-09-21 03:00:00', answers_count: 18571, likes_count: 45258875 }
]

posts.each { |post| Post.create!(post) }

tags = %w[badguy goodguy prouddad rebel teamred]

tags.each { |tag| Tag.create!(name: tag) }

post_tags = [
  { post: Post.find_by(title: "Dominating the galaxy"), tag: Tag.find_by(name: "teamred") },
  { post: Post.find_by(title: "Dominating the galaxy"), tag: Tag.find_by(name: "badguy") },
  { post: Post.find_by(title: "Looking for my son"), tag: Tag.find_by(name: "prouddad") },
  { post: Post.find_by(title: "Sad day for the rebelion"), tag: Tag.find_by(name: "rebel") },
  { post: Post.find_by(title: "I am fast"), tag: Tag.find_by(name: "goodguy") },
  { post: Post.find_by(title: "Sad day for the rebelion"), tag: Tag.find_by(name: "rebel") },
  { post: Post.find_by(title: "Lost in Mos Esly"), tag: Tag.find_by(name: "badguy") },
  { post: Post.find_by(title: "New boss around"), tag: Tag.find_by(name: "badguy") },
  { post: Post.find_by(title: "Im better"), tag: Tag.find_by(name: "badguy") },
  { post: Post.find_by(title: "Better blade"), tag: Tag.find_by(name: "teamred") },
  { post: Post.find_by(title: "Im better"), tag: Tag.find_by(name: "teamred") },
  { post: Post.find_by(title: "New friends"), tag: Tag.find_by(name: "goodguy") },
  { post: Post.find_by(title: "Easy win team"), tag: Tag.find_by(name: "goodguy") },
  { post: Post.find_by(title: "Easy win team"), tag: Tag.find_by(name: "rebel") }
]

post_tags.each { |pt| PostTag.create!(pt) }
