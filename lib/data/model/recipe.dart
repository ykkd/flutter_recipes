import '../model/ingredient.dart';

/// Data model that represents a recipe
class Recipe {
  /// recipe name
  String label;

  /// recipe image
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
}
