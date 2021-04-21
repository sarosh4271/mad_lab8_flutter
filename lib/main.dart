import 'package:flutter/material.dart';
import 'package:mad_lab8_flutter/recipie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: recipebook(),
    ));
  }
}

class recipebook extends StatefulWidget {
  @override
  _recipebookState createState() => _recipebookState();
}

class _recipebookState extends State<recipebook> {
  Container recipebuttons(
      {String recipename,
      String preptime,
      String recipeimg,
      String recipedescription}) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Colors.black)),
        padding: EdgeInsets.all(5),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('images/$recipeimg.jpg'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Text(
                            recipename,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Prep Time: $preptime min',
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => recipedetail(
                        recipename: recipename,
                        recipeimg: recipeimg,
                        preptime: preptime,
                        recipedescription: recipedescription)));
            print('tapped');
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Recipies',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: GridView(
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: ScrollPhysics(),
          padding: EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          children: <Widget>[
            recipebuttons(
                recipeimg: 'redcake',
                recipename: 'Red Velevet Cake',
                preptime: '30',
                recipedescription: 'Cooking oil 1/4 cup\n'
                    'Eggs 2 (large)\n'
                    'Buttermilk 1 cup\n'
                    'Cocoa powder 2 tbsp (unsweetened)\n'
                    'Baking soda 1 tsp\n'
                    'Unsalted butter 1/2 cup (room temperature)\n'
                    'Red food colouring liquid 2 1/2 tbsp\n'
                    'All-purpose flour 2 1/2 cup\n'),
            recipebuttons(
                recipeimg: 'heartcake2',
                recipename: 'Heart Shape Cake',
                preptime: '30',
                recipedescription: 'Powdered sugar 4 1/4\n'
                    'Butter 4 tbsp (soft)\n'
                    'Cream cheese (soft) 1 cup\n'
                    'Salt 1 pinch\n'
                    'Pure vanilla extract 1tsp\n'
                    'Sprinkles (optional)'),
            recipebuttons(
                recipeimg: 'poundcake',
                recipename: 'Pound Cake',
                preptime: '50',
                recipedescription: 'Eggs 3 (large)\n'
                    'Sugar  3/4 cup\n'
                    'Baking powder 3/4 tsp\n'
                    'Salt 1/4 tsp\n'
                    'Cake flour 1/2 to 1 cup\n'
                    'Unsalted butter (softened) 3/4 cup\n'
                    'Vanilla extract 1 to 1_2^1 tsp'),
            recipebuttons(
                recipeimg: 'sprinklecake',
                recipename: 'Sprinkles Cake',
                preptime: '30',
                recipedescription: 'Powdered sugar 6 cup\n'
                    'Unsalted butter 3/4 (softened)\n'
                    'Rainbow sprinkles 1 cup\n'
                    'Vanilla extract 2 tsp\n'
                    'Cream cheese 110g (room temperature)\n'
                    'Salt 2 pinches'),
            recipebuttons(
                recipeimg: 'spongecake',
                recipename: 'Sponge Cake',
                preptime: '84',
                recipedescription: 'Softened butter 1 cup\n'
                    'Baking powder 1_2^1 tsp\n'
                    'Milk half cup (room temperature)\n'
                    'Eggs 2\n'
                    'All-purpose flour 1 cup\n'
                    'Powdered sugar 1 cup'),
            recipebuttons(
                recipeimg: 'chrismascake',
                recipename: 'Chrismas Cake',
                preptime: '80',
                recipedescription: 'Powdered sugar\n'
                    'Marzipan 675g\n'
                    'Apricot jam 3 tbsp (warmed and filtered)\n'
                    'Eggs 3 (only white)\n'
                    'Glycerine 1 1/2 tsp\n'
                    'Lemon juice 3 tsp\n'
                    'Icing sugar 5 cups or 675g (sifted)'),
            recipebuttons(
                recipename: 'Biscuit Cake',
                recipeimg: 'biscuitcake',
                preptime: '60',
                recipedescription: 'Chocolate (80g for this tutorial)'
                    '\nMilk (half cup)'
                    '\nWater'
                    '\nCoffee (half tablespoon)'
                    '\nCocoa powder (1 tablespoon)'
                    '\nBiscuits (250g for this tutorial)'),
            recipebuttons(
                recipedescription: 'All-purpose flour 1 / 4 cup\n'
                    'Powdered sugar 1 cup\n'
                    'Softened butter 1 / 3 cup\n'
                    'Milk 3 / 4 cup\n'
                    'baking powder 1 / 2 tsp\n'
                    'Vanilla 1 tsp\n'
                    'Salt 1 / 2 teaspoon\n'
                    'Egg 1 large\n'
                    'Chocolate Ganache\n',
                recipeimg: 'creamcake',
                recipename: 'Cream Cake',
                preptime: '12'),
            recipebuttons(
                recipedescription:
                    '140g unsalted butter, plus extra for greasing\n'
                    '100ml vegetable oil\n'
                    '140g buttermilk\n'
                    '100ml coffee, made with 1 tsp espresso powder\n'
                    ' 2 large eggs, at room temperature\n'
                    '1 tsp vanilla extract\n'
                    '250g light muscovado sugar',
                recipename: 'Blackout Cake',
                recipeimg: 'blackcake',
                preptime: '50'),
            recipebuttons(
                recipedescription: 'Salt 1 teaspoon\n'
                    'All purpose flour 2 cup\n'
                    'Vegetable oil 2 / 3 cup\n'
                    'Milk 1 / 3 cup\n'
                    'Water 1 cup\n'
                    'Vanilla extract 1 teaspoon\n'
                    'Cooking spray\n'
                    'Cocoa powder (unsweetened) 1 / 2 cup',
                recipeimg: 'brownie',
                recipename: 'Brownie Cake',
                preptime: '50'),
            recipebuttons(
                recipedescription: 'Salt 1 tsp\n'
                    'Flour 2 cup\n'
                    'Vanilla extract 1 tsp\n'
                    'Water 1 cup\n'
                    'Eggs 2 (large)\n'
                    'Baking soda 1 tsp\n'
                    'Cocoa powder 6 tbsp\n'
                    'Buttermilk 1/2 cup',
                recipename: 'Heat Cake',
                recipeimg: 'heartcake',
                preptime: '75'),
            recipebuttons(
                recipedescription: 'Chopped dates 1 cup\n'
                    'Raisins 2 cup\n'
                    'Egg 1 large\n'
                    'Chopped glazed cherries 1 / 2 cup (can sub dried sweetened cranberries)\n'
                    'Baking soda 1 tsp\n'
                    'All-purpose flour 2 cup (divided into 1/4 cup and 3/4 cup)\n'
                    'Butter 1 / 2 cup\n'
                    'Sour cream 1 cup\n'
                    'Grated rind of 1 orange',
                recipeimg: 'fruitcake',
                recipename: 'Fruits Cake',
                preptime: '90'),
            recipebuttons(
                recipedescription: 'Powdered sugar 1 / 3 cup\n'
                    'Eggs 2 large\n'
                    'Unsalted butter 6 tbsp (melted and slightly cooled)\n'
                    'Pure vanilla extract 1 tsp\n'
                    'Ground nutmeg 1 / 4 tsp\n'
                    'Salt 1 / 2 tsp\n'
                    'All-purpose flour 4 cup (add more if needed)\n'
                    'Vegetable oil 6 – 8 cups (depends on your size of pot fill in about 1 / 3 of pot)',
                recipename: 'Doughnuts',
                recipeimg: 'donuts',
                preptime: '45'),
            recipebuttons(
                recipedescription: 'Whipped Cream\n'
                    'Heavy cream 1 cup\n'
                    'chocolate ice cream 1 liter , softened\n'
                    'Ice cream 1 liter (choose yourself)\n'
                    'Sprinkles\n'
                    'Hot fudge 1_2^1 cup (store-bought or yummy homemade)\n'
                    'Oreo’s biscuit 1 large pack  (30-36 biscuits )\n'
                    'Vanilla extract 1 / 2 tsp',
                recipeimg: 'icecreamcake',
                recipename: 'Ice Cream Cake',
                preptime: '80'),
          ],
        ),
      ),
    );
  }
}
