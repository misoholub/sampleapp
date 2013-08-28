FactoryGirl.define do
  factory :user do
    name  'Michal Holub'
    email 'michal@test.example.sk'
    password  'test_me'
    password_confirmation 'test_me'
  end
end