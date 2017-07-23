[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  { username: "mickyginger", email: "micky", firstname: "Mike", lastname: "Hayden", password: "password" },
  { username: "eisacke", email: "eis", firstname: "Emily", lastname: "Isacke", password: "password" },
  { username: "markyjangles", email: "mark", firstname: "Marc", lastname: "De Vois", password: "password" },
  { username: "q", email: "q", firstname: "q", lastname: "q", password: "q" }
])
Item.create!([
  { title: "mickyginger", brand: "micky", super_type: "Mike", sub_type: "Hayden", short_description: "password", price: "eisacke", full_description: "eis", user_id: "1", location: "Isacke"},
  { title: "1111111111r", brand: "11111111111", super_type: "11111111111", sub_type: "11111111111", short_description: "11111111111rd", price: "e11111111111ke", full_description: "e11111111111", user_id: "2", location: "I11111111111e"},
  { title: "m22222222r", brand: "m22222222y", super_type: "22222222e", sub_type: "Ha22222222n", short_description: "pa22222222", price: "e22222222ke", full_description: "e22222222s", user_id: "3", location: "I22222222e"}

])
Conversation.create!([
  { sender_id: 1, receiver_id: 2, item_id: 1},
  { sender_id: 2, receiver_id: 3, item_id: 2},
  { sender_id: 3, receiver_id: 1, item_id: 3}
])

Message.create!([
  { body: "asdasdadsad", conversation_id: 1, user_id: 1 },
  { body: "2222222222", conversation_id: 1, user_id: 2 },



])
