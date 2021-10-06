FactoryBot.define do
  factory :user do
    nickname              { 'テスト' }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation {password}
    area_id                  { 1 }
    gender_id                { 1 }
    profile               {'テスト'}
  end
end