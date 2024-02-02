import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class Recipe {
  final String name;
  final String image;
  final String description;
  final String cooking_time;
  final String complexity;

  Recipe({
    required this.name,
    required this.image,
    required this.description,
    required this.cooking_time,
    required this.complexity});
}

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late Recipe recipe;

  @override
  void initState() {
    super.initState();
    recipe = Recipe(
      name: "Chocolate Cake",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD3DvUbgjyOP3SEWCTK_TWqILA4t691nSJhg&usqp=CAU",
      description:
      "A delicious and moist chocolate cake that will satisfy your sweet tooth.",
      cooking_time: '',
      complexity: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              recipe.image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 16),
            Text(
              recipe.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              recipe.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            MyButton(text: "Add to Meal Plan", onTap: () {}
            ),
          ],
        ),
      ),
    );
  }
}
