puts 'Deleting User'
User.destroy_all
puts 'Deleting Asso'
Asso.destroy_all

'Creating User'
User.create(email:'bisounours@gmail.com',
            password:'password',
            password_confirmation:'password',
            asso_attributes: { name: 'les bisounours' })
print'.'

User.create(email:'follivaches@gmail.com',
            password:'password',
            password_confirmation:'password',
            asso_attributes: { name: 'les follivaches' })
print'.'

User.create(email:'ping_et_pong@gmail.com',
            password:'password',
            password_confirmation:'password',
            asso_attributes: { name: 'ping et pong' })
print'.'
