Fabricator(:prototype) do
  # beer_style Fabricate
  after_create { |proto | 
    proto.ingredient_grains << Fabricate(:ingredient_grain) 
    proto.ingredient_hops << Fabricate(:ingredient_hop) 
    proto.ingredient_yeasts << Fabricate(:ingredient_yeast) 
  }
end