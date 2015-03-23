FactoryGirl.define do

  factory :rout do
    name "Iliada"
    grade "7a"
    date { Faker::Date.between(10.days.ago, Date.today) }
    area { Faker::Address.city }
  end
end
