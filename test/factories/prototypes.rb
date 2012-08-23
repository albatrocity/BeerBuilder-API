# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prototype do

    # user_with_posts will create post data after the user has been created
    factory :prototype_with_ingredients do
      # posts_count is declared as an ignored attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      ignore do
        hops_count 2
        grains_count 3
        yeasts_count 1
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including ignored
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |prototype, evaluator|
        FactoryGirl.create_list(:ingredient_hop, evaluator.hops_count, :prototype => prototype, :hop => Hop.first)
        FactoryGirl.create_list(:ingredient_grain, evaluator.grains_count, :prototype => prototype, :grain => Grain.first)
        FactoryGirl.create_list(:ingredient_yeast, evaluator.yeasts_count, :prototype => prototype, :yeast => Yeast.first)
      end
    end
  end
end
