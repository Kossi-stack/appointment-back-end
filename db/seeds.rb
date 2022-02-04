# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: "Bob", email: "bob@gmail.com", password: "123456", password_confirmation: "123456")
car = Car.create(name: "Ford", model: "Fusion", engine: "V6", seats: 5, price: "100", image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284347/Cars/BMW/bmw6_yuup7a.webp", user_id: user.id)
appointment = Appointment.create(start_time: "2020-02-04T10:00:00.000Z", end_time: "2020-02-04T11:00:00.000Z", car_id: car.id, user_id: user.id)

# Create.create(model: "BMW", name: "X5", engine: "V8", seats: 5, price: 100000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284347/Cars/BMW/bmw6_yuup7a.webp", 
# Create.create(model: "BMW", name: "M3", engine: "V8", seats: 4, price: 147000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284347/Cars/BMW/bmw2_atzaxu.webp")
# Create.create(model: "BMW", name: "M5", engine: "V8", seats: 5, price: 170000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284347/Cars/BMW/bmw5_qzflle.webp")
# Create.create(model: "BMW", name: "X6", engine: "V8", seats: 5, price: 200000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284346/Cars/BMW/bmw4_v4hc9h.webp")
# Create.create(model: "BMW", name: "X1", engine: "V8", seats: 5, price: 150000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284346/Cars/BMW/bmw3_szyvlw.webp")
# Create.create(model: "BMW", name: "X3", engine: "V8", seats: 5, price: 130000, image: "https://res.cloudinary.com/dhatgaadw/image/upload/v1643284346/Cars/BMW/bmw1_qiyp6o.webp")