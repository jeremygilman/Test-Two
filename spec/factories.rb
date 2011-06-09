# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Dodo Bird"
  user.email                 "Dodo.Bird@birdscanfly.com"
  user.password              "extinction"
  user.password_confirmation "extinction"
end
