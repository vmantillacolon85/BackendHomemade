# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=======
Recipe.create([

    { name: 'Cornbread', ingredients: 'cornmeal, flour, sugar, salt, baking powder, melted butter, egg, milk', instructions: 'Grease a 9-inch round cake pan or cast iron skillet well and set aside. Preheat the oven to 400 degrees. In a medium mixing bowl, add the flour, cornmeal, sugar, salt, and baking powder. Whisk to combine well. Make a well in the center of your dry ingredients and add your oil or butter, milk, and egg. Stir just until the mixture comes together and there are only a few lumps remaining. Pour the batter into the prepared pan and bake for 20-25 minutes until the top is a deep golden brown and a toothpick inserted into the center comes out clean. Serve hot.', image: 'https://res.cloudinary.com/vmcolon85/image/upload/v1612131239/cornbread_spd8az.jpg' },
    { name: 'Pesto Pasta', ingredients: '1/2 cup chopped onion, 2 1/2 tablespoons pesto, 2 tablespoons olive oil, 2 tablespoons grated Parmesan cheese, 1 (16 ounce) package pasta, salt to taste, ground black pepper to taste', instructions: 'Cook pasta in a large pot of boiling water until done. Drain. Meanwhile, heat the oil in a frying pan over medium low heat. Add pesto, onion, and salt and pepper. Cook about five minutes, or until onions are soft. In a large bowl, mix pesto mixture into pasta. Stir in grated cheese. Serve.', image: 'https://res.cloudinary.com/vmcolon85/image/upload/v1612131387/pestopasta_mbgvr9.jpg' },
])

Drink.create([
    { name: 'Negroni', ingredients: 'Campari, sweet vermouth, gin', instructions: 'Stir with ice for 20-30 seconds. Strain into coupe glass. Garnish with orange peel', image: 'https://res.cloudinary.com/vmcolon85/image/upload/v1612131257/negroni_gc0z2h.jpg' },
    { name: 'Sidecar', ingredients: 'Cognac or brandy, Cointreau, lemon juice', instructions: 'Twist the rim of a coupe into a plate of sugar so it attaches to the glass’s rim. Add all ingredients to a cocktail shaker with ice and shake until chilled. Strain into sugar-rimmed coupe and garnish with an orange peel', image: 'https://res.cloudinary.com/vmcolon85/image/upload/v1612131268/sidecar_rrmkbs.jpg' },
    ])



    # CREATE TABLE drinks (id SERIAL, name VARCHAR(20), ingredients VARCHAR(240), instructions VARCHAR(240), img_url VARCHAR(240));
    #
    # INSERT INTO drinks (name, ingredients, instructions, img_url ) VALUES ('Negroni', 'Campari, sweet vermouth, gin', 'Stir with ice for 20-30 seconds. Strain into coupe glass. Garnish with orange peel', 'https://i.imgur.com/s0AG2oO.jpg' );
    #
    # INSERT INTO drinks (name, ingredients, instructions, img_url ) VALUES ('Sidecar', 'Cognac or brandy, Cointreau, lemon juice', 'Twist the rim of a coupe into a plate of sugar so it attaches to the glass’s rim. Add all ingredients to a cocktail shaker with ice and shake until chilled. Strain into sugar-rimmed coupe and garnish with an orange peel', 'https://i.imgur.com/4NfDgAQ.jpg');
    #
    #
    #
    #
    #
    #
    #
    #
=======
    { name: "Cornbread", ingredients: "cornmeal, flour, sugar, salt, baking powder, melted butter, egg, milk", instructions: "Grease a 9-inch round cake pan or cast iron skillet well and set aside. Preheat the oven to 400 degrees. In a medium mixing bowl, add the flour, cornmeal, sugar, salt, and baking powder. Whisk to combine well. Make a well in the center of your dry ingredients and add your oil or butter, milk, and egg. Stir just until the mixture comes together and there are only a few lumps remaining. Pour the batter into the prepared pan and bake for 20-25 minutes until the top is a deep golden brown and a toothpick inserted into the center comes out clean. Serve hot.", img_url: "https://i.imgur.com/ZnBLBMM.jpg" },
    { name: "Pesto Pasta", ingredients: "1/2 cup chopped onion, 2 1/2 tablespoons pesto, 2 tablespoons olive oil, 2 tablespoons grated Parmesan cheese, 1 (16 ounce) package pasta, salt to taste, ground black pepper to taste", instructions: "Cook pasta in a large pot of boiling water until done. Drain. Meanwhile, heat the oil in a frying pan over medium low heat. Add pesto, onion, and salt and pepper. Cook about five minutes, or until onions are soft. In a large bowl, mix pesto mixture into pasta. Stir in grated cheese. Serve.", img_url: "https://i.imgur.com/ORp3eg8.jpg" }, {name: "Chili", ingredients: "2 pounds ground beef, 2 cloves garlic, chopped, one 8-ounce can tomato sauce, 2 tablespoons chili powder, 1 teaspoon ground cumin, 1 teaspoon ground oregano, 1 teaspoon salt, 1/4 teaspoon cayenne pepper, 1/4 cup masa harina, one 15-ounce can kidney beans, drained and rinsed, one 15-ounce can pinto beans, drained and rinsed", instructions: "Place the ground beef in a large pot and throw in the garlic. Cook over medium heat until browned. Drain off the excess fat, and then pour in the tomato sauce, chili powder, cumin, oregano, salt and cayenne. Stir together well, cover, and then reduce the heat to low. Simmer for 1 hour, stirring occasionally. If the mixture becomes overly dry, add 1/2 cup water at a time as needed. After an hour, place the masa harina in a small bowl. Add 1/2 cup water and stir together with a fork. Dump the masa mixture into the chili. Stir together well, and then taste and adjust the seasonings. Add more masa paste and/or water to get the chili to your preferred consistency, or to add more corn flavor. Add the beans and simmer for 10 minutes. Serve with shredded Cheddar, chopped onions, tortilla chips and sour cream.", img_url: "https://www.cookingclassy.com/wp-content/uploads/2013/02/slow-cooker-chili-25.jpg"}
])


