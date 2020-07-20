tests

pundit

create routes for - new_asso - new_member
       actions    #new_asso     #new_member
       class       member
       polymorphic association





------------  Devise form with nested attributes,

where :
- User belongs_to asso & accepts_nested_attr
    has defined the DB paths : user.asso is defined :)
- Asso has_one User

Definition of RegistrationsController


- This works :
User.create(email:'test@gmail.com',
            password:'password',
            password_confirmation:'password',
            asso_attributes: { name: 'nours' })


From this tuto,
https://kakimotonline.com/2014/03/30/extending-devise-registrations-controller/

tests Asso model and Controller
