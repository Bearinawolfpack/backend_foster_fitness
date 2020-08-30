require 'faker'

Admin.destroy_all
User.destroy_all
Workout.destroy_all
Service.destroy_all
Event.destroy_all
Coach.destroy_all

Admin.create(
    name:"Corey",
    password:"bearinawolfpack",
    email:"bearinawolfpack@gmail.com"
)

User.create(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    phone: "1(321)456-9872",
    message: Faker::Movies::HitchhikersGuideToTheGalaxy.marvin_quote,
    admin_id: Admin.first.id
)

# yyyy, mm, dd
Workout.create(
    name: "Fran",
    date: ("2020/8/26"),
    workout: "21-15-9: Thrusters(95/65), Burpees",
    description: "No Rest, No Mercy, Not Ever!",
    admin_id: Admin.first.id
)

    Service.create(
        name:"Membership",
        description:"Unlimited Classes Monthly",
        price: 175,
        admin_id: Admin.first.id
    )

3.times do 
    Event.create(
        name:"Wodapalooza",
        description:"Long weekend of workouts in Miami with the best.",
        picture:"https://competitioncorner.net/file.aspx/mainFilesystem/download?Events%2F2019_WZATC_Blogs.png",
        url:"https://wodapalooza.com/",
        admin_id: Admin.first.id
    )
end

6.times do
    Coach.create(
        name:Faker::Books::Dune.character,
        bio:Faker::Books::Dune.quote,
        picture:"https://johnrieber.files.wordpress.com/2017/09/shirtless-brad-pitt-snatch-2000.jpg",
        admin_id: Admin.first.id
    )
end