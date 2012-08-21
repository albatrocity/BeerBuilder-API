# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer_style do
    name "Doppelbock"
    og_hi ""
    og_lo ""
    fg_lo ""
    fg_hi ""
    abv_lo ""
    abv_hi ""
    ibu_lo ""
    ibu_hi ""
    srm_lo ""
    srm_hi ""
    aroma "Smelly"
    appearance "Pretty"
    flavor "Tasty"
    mouthfeel "Wet"
    overall_impression "It's beer!"
    comments ""
    history ""
  end
end
