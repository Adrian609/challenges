require 'factory_girl'

FactoryGirl.define do

  factory :project do
    name "Go To Mars"
    description "We outta here"
  end

  factory :user do
    first_name "Drew"
    last_name "Andre"
    email "drewjamesandre@gmail.com"
  end

end
