class Pancakes

  attr_accessor :bowl, :pan

  FLOUR = "1 cup flour"
  BAKING_POWDER = "3 teaspoons baking powder"
  SUGAR = "1 tablespoon sugar"
  SALT = "1 teaspoon salt"
  MILK = "1 cup milk"
  EGG = "1 egg"
  BUTTER = "4 tablespoons butter"

  def initialize
    @bowl = []
    @pan = []
    dry_ingredients = [FLOUR, BAKING_POWDER, SALT, SUGAR]
    wet_ingredients = [MILK, EGG, BUTTER]
    make_pancakes(dry_ingredients, wet_ingredients)
  end

  def make_pancakes (dry_ingredients, wet_ingredients)
    mix (dry_ingredients)
    mix (wet_ingredients)
    puts mix (dry_ingredients)
    heated_pan = heat (pan)
    #batter = remove_from_bowl (batter_in_bowl)
    #batter_in_pan = pour (batter, heated_pan)
    #cooked_pancakes_in_pan = brown (batter_in_pan)
    #serve (cooked_pancakes_in_pan)
  end

  def mix (ingredients)
    @bowl << ingredients
  end

  def pour (batter, pan)
    pan << batter
  end

  def heat (pan)
    pan << "heated, lightly oiled"
  end

  def brown (pan_with_batter)
    printf (pan_with_batter)
  end

  def serve (cooked_pancakes_in_pan)
     remove_from_pan(cooked_pancakes_in_pan);
  end

  def remove_from_pan (cooked_pancakes_in_pan)
    pop (cooked_pancakes_in_pan)
  end

  def remove_from_bowl (batter_in_bowl)
    pop (batter_in_bowl)
  end

end

