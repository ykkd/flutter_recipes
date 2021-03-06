import 'package:flutter/material.dart';
import '../../data/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  // ignore: use_key_in_widget_constructors
  const RecipeDetail(this.recipe);

  @override
  _RecipeDetailState createState() {
    // ignore: no_logic_in_create_state
    return _RecipeDetailState(recipe);
  }
}

class _RecipeDetailState extends State {
  final Recipe recipe;
  int _sliderVal = 1;

  _RecipeDetailState(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
                height: 300,
                width: double.infinity,
                child: Image(image: AssetImage(recipe.imageUrl))),
            const SizedBox(
              height: 4,
            ),
            Text(
              recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = recipe.ingredients[index];
                  return Text(
                      "${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}");
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: "${_sliderVal * recipe.servings} servings",
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
