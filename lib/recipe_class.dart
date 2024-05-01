class Recipe {
  final String name;
  final String image;
  final String category;
  final String duration;
  final String serving;

  Recipe({
    required this.name,
    required this.image,
    required this.category,
    required this.duration,
    required this.serving,
  });
}

final recipeData = [
  Recipe(
    name: "Beef Bibimbap with Three Fried Eggs ",
    image: "assets/images/beef_bibimbap_recipe.jpeg",
    category: "Beef",
    duration: "1 Hour",
    serving: "3 Serving",
  ),
  Recipe(
    name: "Nasi Goreng ",
    image: "assets/images/beef_bibimbap_recipe.jpeg",
    category: "Rice",
    duration: "30 Minutes",
    serving: "3 Serving",
  ),
];
