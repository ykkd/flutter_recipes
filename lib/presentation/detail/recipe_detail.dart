import 'package:flutter/material.dart';
import '../../data/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  RecipeDetail(this.recipe);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState(recipe);
  }
}

class _RecipeDetailState extends State {
  final Recipe recipe;

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
          ],
        ),
      ),
    );
  }
}
