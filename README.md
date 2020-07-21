TODO
tests : create model and controller tests handling polymorphic association
pundit
new seeds
create Addresses model

---------------------------------------------
Models :
- User is a Devise model,
  belongs to Member or Asso through a one-to-one polymorphic association
- Asso has one User through this association
- Member has one User

Controllers & Views :
- assos and people controllers create a new Asso-User or Person-User couple with a form

Definition of RegistrationsController

tests:
- User Model, Asso model, Person model, Fixtures
- Controller

