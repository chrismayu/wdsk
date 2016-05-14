FactoryGirl.define do
  factory :player do
    last_name {Faker::Name.last_name }
    first_name {Faker::Name.first_name }
    address  {Faker::Address.street_address }
    city "Woodstock"
    postal_code "N4T0B7"
    phone_number {Faker::PhoneNumber.phone_number}
    email_address { Faker::Internet.email }
    date_of_birth "2016-05-12"
    years_played 1
    played_competitively {Faker::Boolean.boolean}
    gender { ["male", "female"].sample } 
    name_of_parent_guardian {Faker::Name.name }
    willing_to_coach {Faker::Boolean.boolean}
    willing_to_assist_coach {Faker::Boolean.boolean}
    child_like_to_play_goalie {Faker::Boolean.boolean}
    child_has_a_medical_condition {Faker::Boolean.boolean}
    medical_condition "MyText"
    appectance_of_terms true 
  end
end
