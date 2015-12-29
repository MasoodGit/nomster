FactoryGirl.define do

  factory :user do
    email "icouldbeAnything@gmail.com"
    password "hahahaha"
    password_confirmation "hahahaha"
  end

  factory :place do
    name "MTR"
    description "Food Joint"
    address "Mavalli Tiffin Rooms, Bangalore"

    association :user
  end

  factory :comment do
    message "Bangalore's awesome place to eat"
    rating "2_stars"

    association :user
    association :place
  end

end
