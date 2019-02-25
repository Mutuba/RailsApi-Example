# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create([{ title: 'My awesome article 1', content: 'Content article 1', slug: 'article-1' },
                { title: 'My awesome article 2', content: 'Content article 2', slug: 'article-2' },
                { title: 'My awesome article 3', content: 'Content article 3', slug: 'article-3' },
                { title: 'My awesome article 4', content: 'Content article 4', slug: 'article-4' }])
