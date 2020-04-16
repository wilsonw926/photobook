def create_user
  unless User.exists?(email: 'user@gmail.com')
    User.create!(
      email: 'user@gmail.com',
      password: 'password',
      password_confirmation: 'password'
    )
    puts "created user."
  end
end

def create_albums
  (1..5).each do |i|
    a = Album.create!(
      name: "Test",
      user_id: 1
    )
    a.album_cover_photo.attach(io: File.open("app/assets/images/bg-01.jpg"), filename: 'bg-01.jpg')
  end
  puts "created albums."
end

create_user
create_albums