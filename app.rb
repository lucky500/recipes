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
  Recipe.create({:name => params['name'] })
  redirect '/'
end
