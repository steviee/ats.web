FactoryGirl.define do
  factory :user do
    name     "Stephan Eberle"
    email    "steviee@me.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
