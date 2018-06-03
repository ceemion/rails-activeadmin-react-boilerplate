# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if %w(development production).include? Rails.env
  AdminUser.first_or_create(email: 'admin@kompilab.com', password: 'password', password_confirmation: 'password')
end

if Drink.count == 0
  breakfast_smoothie = Drink.create(
      title: "Two-Minute Breakfast Boost",
      description: "Whizz up a low-fat breakfast smoothie in no time. Use banana with other soft fruit, plus honey for a little sweetness and oats for slow-release fuel.",
      steps: "Put all the ingredients in a blender and whizz for 1 min until smooth. Pour the mixture into two glasses to serve.",
      source: "https://www.bbcgoodfood.com/recipes/two-minute-breakfast-smoothie"
  )
  breakfast_smoothie.ingredients.create(description: "1 banana")
  breakfast_smoothie.ingredients.create(description: "1 tbsp porridge oats")
  breakfast_smoothie.ingredients.create(description: "80g soft fruit (like mango or strawberries)")
  breakfast_smoothie.ingredients.create(description: "150ml milk")
  breakfast_smoothie.ingredients.create(description: "1 tsp honey")
  breakfast_smoothie.ingredients.create(description: "1 tsp vanilla extract")

  kale_smoothie = Drink.create(
      title: "Kale And Hearty Smoothie",
      description: "Give yourself a dose of vitamin C in the morning with this vegan green smoothie. Along with kale and avocado, there's a hit of zesty lime and pineapple.",
      steps: "Put all of the ingredients into a bullet or smoothie maker, add a large splash of water and blitz. Add more water until you have the desired consistency.",
      source: "https://www.bbcgoodfood.com/recipes/kale-smoothie",
  )
  kale_smoothie.ingredients.create(description: "2 handfuls kale")
  kale_smoothie.ingredients.create(description: "½ avocado")
  kale_smoothie.ingredients.create(description: "½ lime, juice only")
  kale_smoothie.ingredients.create(description: "large handful frozen pineapple chunks")
  kale_smoothie.ingredients.create(description: "medium-sized chunk ginger")
  kale_smoothie.ingredients.create(description: "1 tbsp cashew nuts")
  kale_smoothie.ingredients.create(description: "1 banana, optional")

  apricot_blondies = Drink.create(
      title: "Apricot & pistachio frangipane blondies",
      description: "Make the most of summer's sweet, golden apricots with these moreish apricot and pistachio frangipane blondies. They make a perfect treat for afternoon tea.",
      steps: "Heat oven to 200C/180C fan/gas 6 and butter and line a rectangular baking tin, approx 20 x 25cm. To make the frangipane, beat together the sugar and butter until fluffy, then add the egg and pistachios.
In a bowl, stir together the muscovado sugar, fennel seeds and melted butter with a pinch of salt. Add the egg and stir vigorously, then tip in the flour and half the pistachios and fold until well combined and no streaks remain. Add the milk to loosen.
Spoon two-thirds of the batter into the tin and smooth with the back of a metal spoon or spatula, then arrange the apricot halves on top and press into the batter. Dot the frangipane around the batter too, then top with the remaining spoonfuls of batter so that it’s part covering the frangipane and apricots. Scatter over the rest of the pistachios. Bake for 25-30 mins until a skewer comes out with some crumbs that are a little moist, but not raw. Cool completely in the tin, then cut into 12 squares.",
      source: "https://www.bbcgoodfood.com/recipes/apricot-pistachio-frangipane-blondies"
  )
  apricot_blondies.ingredients.create(description: "100g unsalted butter, melted, plus a little extra for the tin")
  apricot_blondies.ingredients.create(description: "200g light muscovado sugar")
  apricot_blondies.ingredients.create(description: "½ tsp fennel seeds")
  apricot_blondies.ingredients.create(description: "1 large egg")
  apricot_blondies.ingredients.create(description: "120g plain flour")
  apricot_blondies.ingredients.create(description: "50g pistachios, roughly chopped")
  apricot_blondies.ingredients.create(description: "1-2 tbsp milk")
  apricot_blondies.ingredients.create(description: "6 large ripe apricots, halved and stoned")
  apricot_blondies.ingredients.create(description: "65g golden caster sugar")
  apricot_blondies.ingredients.create(description: "80g unsalted butter, softened")
  apricot_blondies.ingredients.create(description: "1 egg")
  apricot_blondies.ingredients.create(description: "100g pistachios, ground to crumbs")
end
