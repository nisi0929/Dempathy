# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.create!(
  [
    {
      name: 'サッカー部',
      email: 'soccer1@user.com',
      password: 'soccer1user',
      description: 'soccer部のdescription',
      admin: false,
      suitable: true,
    },
    {
      name: 'バレー部',
      email: 'valley1@user.com',
      password: 'valley1user',
      description: 'valley部のdescription',
      admin: false,
      suitable: true,
    },
    {
      name: '卓球部',
      email: 'TableTennis1@user.com',
      password: 'table1user',
      description: '卓球部のdescription',
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
      name: 'テニス',
      email: 'tennis@user.com',
      password: 'tennis1user',
      description: 'テニス部のdescription',
      suitable: true,
      admin: false,
    },
    {
      name: 'ソフトテニス',
      email: 'SoftTennis@user.com',
      password: 'softTennis1user',
      description: 'ソフトテニス部のdescription',
      suitable: true,
      admin: false,
    },
    {
      name: 'ゲーム部',
      email: 'game@user.com',
      password: 'game1user',
      description: 'game部のdescription',
      suitable: true,
      admin: false,
    },
    {
      name: '陸上部',
      email: 'track@user.com',
      password: 'track1user',
      description: '陸上部のdescription',
      suitable: true,
      admin: false,
    },
  ],
)
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
