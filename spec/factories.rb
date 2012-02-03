#By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                     "Harry Sandhu"
  user.email                    "hsandhu1978@yahoo.com"
  user.password                 "foobar"
  user.password_confirmation    "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end