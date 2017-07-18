# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sponsorship.delete_all
Sponsor.delete_all
Player.delete_all
Team.delete_all

team1 = Team.create({name: "Chudley Cannons"})
team2 = Team.create({name: "Barmy Rejects"})

player1 = Player.create({name: "Barry", team: team1})
player2 = Player.create({name: "Garry", team: team1})
player3 = Player.create({name: "Hazza", team: team2})

sponsor1 = Sponsor.create({name: "Adidas"})
sponsor2 = Sponsor.create({name: "Nike"})
sponsor3 = Sponsor.create({name: "Reebok"})
sponsor4 = Sponsor.create({name: "Puma"})

Sponsorship.create({sponsor: sponsor1, player: player1})
Sponsorship.create({sponsor: sponsor2, player: player1})
Sponsorship.create({sponsor: sponsor3, player: player3})
Sponsorship.create({sponsor: sponsor3, player: player2})

