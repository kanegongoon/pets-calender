FactoryBot.define do
  factory :user do
    nickname     {'sample'}
    email        {Faker::Internet.free_email}
    password     {'000aaa'}
    password_confirmation {password}
  end
end