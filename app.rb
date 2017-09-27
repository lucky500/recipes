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
