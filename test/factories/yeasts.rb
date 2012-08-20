# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :yeast do
    name "MyString"
    attenuation_lo "1"
    attenuation_hi "2"
    flocculation "4"
    temperature_lo "40"
    temperature_hi "80"
    alcohol_tolerance "80"
  end
end
