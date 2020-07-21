puts 'Deleting User'
User.destroy_all
puts 'Deleting Asso'
Asso.destroy_all
puts 'Deleting Person'
Person.destroy_all

puts 'Creating Asso & User'
(0..9).each do |i|
  asso = Asso.create!(name: "Association_N°_#{i}",
              register: "W#{i.to_s * 9}")

  asso.create_user(email:"User_of_Association_N°_#{i}@gmal.com",
              password:'password',
              password_confirmation:'password')
  print'.'
end

puts 'Creating Person & User'
(0..9).each do |i|
  asso = Person.create!(pseudo: "Personne_N°_#{i}")

  asso.create_user(email:"User_Individual_N°_#{i}@gmal.com",
              password:'password',
              password_confirmation:'password')
  print'.'
end

