require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
also_reload("lib/**/*.rb")
require("./lib/recipe")
require("./lib/tag")
require("pry")

get("/") do
  @recipes = Recipe.all
  erb(:index)
end

get("/recipe_form") do
  erb(:recipe_form)
end

post("/add_recipe") do
  recipe = Recipe.new({:name => params['name'] })
  if recipe.save
    redirect '/'
  else
    @error_type = recipe
    erb(:errors)
  end
end

get('/recipes/:id') do
  @recipe = Recipe.find(params[:id])
  @ingredients = @recipe.ingredients
  erb(:recipe)
end

patch('/add_ingredients') do
  @recipe = Recipe.find(params["id"].to_i)
  ingredient = params.fetch("ingredient")
  @recipe.ingredients.push(ingredient)
  @recipe.save
  redirect '/recipes/' + @recipe.id.to_s
end
