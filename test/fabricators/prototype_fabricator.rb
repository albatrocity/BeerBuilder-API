Fabricator(:prototype) do
  after_create { |proto | 
    proto.ingredient_grains << Fabricate.build(:ingredient_grain) 
    proto.ingredient_hops << Fabricate.build(:ingredient_hop) 
    proto.ingredient_yeasts << Fabricate.build(:ingredient_yeast) 
  }
end