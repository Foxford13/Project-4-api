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
  { title: "Cheap gtx 1060 3gb", brand: "Nvidia", super_type: "Hardware", sub_type: "GPU", short_description: "GTX 1060 3gb used 3moths", price: "100$", full_description: "lowesfasdfvqvcfeqwrcqwervqewvcrqewvqcewrvqwverqwverqvwrqwcr vqwcrcqwercq", user_id: "1", location: "Southend", remote_image_url: "http://www.amd.com/PublishingImages/photography/product/375px/amd-radeon-rx-480-graphics-card-product-image-art-background-375.jpg"},
  { title: "Mouse logitech g602", brand: "logitech", super_type: "Accessory", sub_type: "Mouse", short_description: "11111111111rd11111111111rd11111111111rd11111111111rd", price: "akeyboard", full_description: "e11111111111e11111111111e11111111111e11111111111e11111111111e11111111111", user_id: "2", location: "Glasgow", remote_image_url: "http://gaming.logitech.com/assets/49411/5/g602-gaming-mouse.png"},
  { title: "Monitor", brand: "Hyundai", super_type: "Accssory", sub_type: "Monitor", short_description: "pa22asdsdasdasa2222", price: "$50", full_description: "sligtly beathen 26 inch monitor", user_id: "3", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ATILxFwwL._SX300_.jpg"},
  { title: "Monitor", brand: "Hyundai", super_type: "Accssory", sub_type: "Monitor", short_description: "pa22asdsdasdasa2222", price: "$50", full_description: "sligtly beathen 26 inch monitor", user_id: "4", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ATILxFwwL._SX300_.jpg"}

])

Conversation.create!([
  { sender_id: 1, receiver_id: 2, item_id: 1},
  { sender_id: 2, receiver_id: 3, item_id: 2},
  { sender_id: 3, receiver_id: 1, item_id: 3},
  { sender_id: 4, receiver_id: 3, item_id: 2}
])

Message.create!([
  { body: "asdasdadsad", conversation_id: 1, user_id: 1 },
  { body: "2222222222", conversation_id: 1, user_id: 2 },
  { body: "asdasdadsad", conversation_id: 2, user_id: 3 },
  { body: "works", conversation_id: 4, user_id: 4 },
  { body: "works hello", conversation_id: 4, user_id: 3 },
  { body: "wooorks", conversation_id: 4, user_id: 4 }
])
