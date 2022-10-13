# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hero.create(
        name: "Bruce Banner ",
        super_name: "The hulk"
)  
Hero.create(
        name: "Wade wilson",
        super_name: "Dead pool"
)  
Hero.create(
        name: "Bruce Wayne",
        super_name: "Batman"
)
Hero.create(
        name: "Bruce Wayne",
        super_name: "Batman"
)
Hero.create(
        name: "Clark Kent",
        super_name: "Superman"
)

powers = [
    {name:"Super Strength: ", description: "Gives the wielder super human strengths"},
    {name:"Super Human Senses: ", description: "Allows the person to user their senses at super human level"},
    {name:"Agile", description: "Can conform and is quick"},
    {name:"Gargantuan", description: "Strong, fast and powerful"},
    {name:"Flight : ", description: "Gives the wielder the ability to fly through the skys at supersonic speed"},
    ]

    powers.each {|power| Power.create!(power)}

Hero_power.create(strength: "Average", power_id: 1, hero_id: 1)
Hero_power.create(strength: "Average", power_id: 2, hero_id: 2)
Hero_power.create(strength: "Average", power_id: 3, hero_id: 3)
Hero_power.create(strength: "Average", power_id: 4, hero_id: 4)
Hero_power.create(strength: "Average", power_id: 5, hero_id: 5)