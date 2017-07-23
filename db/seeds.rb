[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  { username: "mickyginger", email: "micky", firstname: "Mike", lastname: "Hayden", password: "password" },
  { username: "eisacke", email: "eis", firstname: "Emily", lastname: "Isacke", password: "password" },
  { username: "markyjangles", email: "mark", firstname: "Marc", lastname: "De Vois", password: "password" },
  { username: "q", email: "q", firstname: "q", lastname: "q", password: "q" }
])
