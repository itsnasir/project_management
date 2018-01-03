# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.where(name: "project manager").first_or_create(name: "project manager")
Status.where(name: "ToDO").first_or_create(name: "ToDO")
Status.where(name: "In Progress").first_or_create(name: "In Progress")
Status.where(name: "In Testing").first_or_create(name: "In Testing")
Status.where(name: "Ready For UAT").first_or_create(name: "Ready For UAT")
Status.where(name: "Verified").first_or_create(name: "Verified")
Status.where(name: "Done").first_or_create(name: "Done")
Status.where(name: "Feedback Required").first_or_create(name: "Feedback Required")
Status.where(name: "Pending Merge").first_or_create(name: "Pending Merge")
Status.where(name: "Completed").first_or_create(name: "Completed")