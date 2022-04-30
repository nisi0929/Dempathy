# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.create!(
  [
    {
      name: 'ruby',
      email: 'ruby1@user.com',
      password: 'ruby1user',
      description: 'rubyは動的型付け言語です',
      admin: false,
    },
    {
      name: 'go',
      email: 'go1@user.com',
      password: 'go1user',
      description: 'goは最近人気の言語',
      suitable: true,
    },
    {
      name: 'JavaScript',
      email: 'js1@user.com',
      password: 'js1user',
      description: 'jsです',
      admin: false,
      suitable: true,
    },
    {
      name: 'adminuser',
      email: 'admin1@user.com',
      password: 'admin1user',
      description: 'adminです',
      admin: true,
      suitable: true,
    },
    {
      name: 'hacker',
      email: 'hacker1@user.com',
      password: 'hacker1user',
      description: 'hackerです',
      admin: false,
      suitable: false,
    },
  ],
)
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
