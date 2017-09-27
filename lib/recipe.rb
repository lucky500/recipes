class Recipe < ActiveRecord::Base
  has_and_belongs_to_many(:tags)
  validates(:name, {:presence => true})
  before_save(:capitalize_recipe)

private
  def capitalize_recipe
    name = self.name.split(" ")
    self.name = name.map{ |word| word.capitalize }.join(" ")
  end
end
