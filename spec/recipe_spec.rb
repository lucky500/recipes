require('spec_helper')

describe(Recipe) do
  let(:recipe) { Recipe.new({name: "grilled chicken"}) }
  describe("#capitalize_recipe") do
    it("capitalizes the name of the recipe") do
     recipe.save()
     expect(recipe.name()).to(eq("Grilled Chicken"))
   end
  end
end
