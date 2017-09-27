ENV['RACK_ENV'] = 'test'

require("sinatra/activerecord")
require 'rspec'
require 'pg'
require 'recipe'
require 'tag'



RSpec.configure do |config|
  config.after(:each) do

    Recipe.all().each() do |recipe|
      recipe.destroy()
    end

    Tag.all.each do |tag|
      tag.destroy
    end

  end
end
