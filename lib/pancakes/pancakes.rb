module Pancakes
  class Pancakes

    attr_accessor :bowl, :pan, :plate

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
      @plate = []
      dry_ingredients = [FLOUR, BAKING_POWDER, SALT, SUGAR]
      wet_ingredients = [MILK, EGG, BUTTER]
      make_pancakes(dry_ingredients, wet_ingredients)
    end

    def make_pancakes (dry_ingredients, wet_ingredients)
      mix (dry_ingredients)
      mix (wet_ingredients)
      heat (pan)
      batter = remove_from_bowl ()
      pour (batter)
      brown ()
      serve ()
    end

    def mix (ingredients)
      @bowl << ingredients
      print(@bowl)
    end

    def pour (batter)
      @pan << batter
    end

    def heat (pan)
      pan << "I am heated"
    end

    def brown (pan_with_batter)
      puts pan_with_batter
      pan_with_batter
    end

    def serve (cooked_pancakes_in_pan)
      pancakes =
          remove_from_pan(cooked_pancakes_in_pan);
      print(pancakes)
    end

    def remove_from_pan (cooked_pancakes_in_pan)
      #cooked_pancakes_in_pan.pop
    end

    def remove_from_bowl (batter_in_bowl)
      batter_in_bowl.pop
    end

  end
end

