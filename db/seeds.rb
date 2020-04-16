unless User.exists?(email: 'user@gmail.com')
  User.create!(
    email: 'user@gmail.com',
    password: 'password',
    password_confirmation: 'password'
  )
  puts "created user."
end

unless Album.exists?(name: 'test')
  Album.create!(
    name: 'test'
  )
  puts "created album."
end