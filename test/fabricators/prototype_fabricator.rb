Fabricator(:prototype) do |proto|
  beer_style { Fabricate(:beer_style) }
  beer_category 'stuff'
  after_create { |proto| 
    ingredient_grains(count: 3) { |attrs, i| Fabricate(:ingredient_grain, prototype: prototype ) }
    ingredient_hops(count: 2) { |attrs, i| Fabricate(:ingredient_hop, prototype: prototype ) }
    ingredient_yeast(count: 3) { |attrs, i| Fabricate(:ingredient_yeast, prototype: prototype ) }
  }
end