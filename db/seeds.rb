# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#TODO fazer seeds
Vehicle.create(license_plate: 'KIT-4134', brand: 'Mahindra', model: 'SCORPIO 2.6 CD TB Diesel CRDe 4x4', year: '2008')


Insured.create(name: 'Agustinho Carrara', cpf: '99545910011')

Policy.create(date_issue: Date.today, policy_expiration: Date.today + 1.year, insured: Insured.last, vehicle: Vehicle.last)

Vehicle.new(license_plate: 'KIT-4134', brand: 'Mahindra', model: 'SCORPIO 2.6 CD TB Diesel CRDe 4x4', year: '2008')


Insured.new(name: 'Agustinho Carrara', cpf: '99545910011')

Policy.new(date_issue: Date.today, policy_expiration: Date.today + 1.year, insured: Insured.last, vehicle: Vehicle.last)
