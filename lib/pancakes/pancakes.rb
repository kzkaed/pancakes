module Pancakes
  class Pancakes

    attr_accessor :batter, :bowl, :pan, :plate, :count

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
      @batter = []
      @count = 0
      dry_ingredients = [FLOUR, BAKING_POWDER, SALT, SUGAR]
      wet_ingredients = [MILK, EGG, BUTTER]

      make_pancakes(dry_ingredients, wet_ingredients)

    end

    def make_pancakes (dry_ingredients, wet_ingredients)
      mix(dry_ingredients)
      mix(wet_ingredients)
      heat_pan
      pour_batter
      cook_batter
      serve_pancakes
    end

    private
    def mix (ingredients)
      puts("MIXING INGREDIENTS")
      @bowl << ingredients.shuffle
      puts(remove_from_bowl(@bowl))
      if all_ingredients_mixed?
        @batter << "Batter"
        puts @batter
      end
    end

    def heat_pan ()
      puts("HEATING PAN")
      @pan << "Heated Pan"
      puts pan
    end

    def pour_batter
      puts "POURING BATTER IN PAN"
      @pan << @batter
      puts @pan
    end

    def cook_batter
      puts("COOKING BATTER")
      @pan << "Cooked Pancakes"
    end

    def serve_pancakes
      puts("SERVING PANCAKES")
      puts(remove_from_pan(@pan))
    end

    def all_ingredients_mixed?
      @count = @count + 1
      @count == 2
    end

    def remove_from_pan (pan)
      pan.pop
    end

    def remove_from_bowl (bowl)
      bowl.pop
    end

  end
end

