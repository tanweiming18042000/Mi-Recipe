class Recipe {
  final String id;
  final String title;
  final String category;
  final String imageUrl;
  final int minutes;
  final int servings;
  final String difficulty;
  final double rating;

  Recipe({
    required this.id,
    required this.title,
    required this.category,
    required this.imageUrl,
    required this.minutes,
    required this.servings,
    required this.difficulty,
    required this.rating,
  });
}

final List<Recipe> mockRecipes = [
  Recipe(
    id: 'recipe_1',
    title: 'Creamy Pasta Carbonara',
    category: 'Italian',
    imageUrl:
        'https://images.unsplash.com/photo-1589308078052-86de3b7bfc6a?auto=format&fit=crop&w=1200&q=80',
    minutes: 30,
    servings: 4,
    difficulty: 'Medium',
    rating: 4.8,
  ),
  Recipe(
    id: 'recipe_2',
    title: 'Grilled Salmon with Herbs',
    category: 'Seafood',
    imageUrl:
        'https://images.unsplash.com/photo-1606813902205-601ff48b30f8?auto=format&fit=crop&w=1200&q=80',
    minutes: 20,
    servings: 2,
    difficulty: 'Easy',
    rating: 4.9,
  ),
  Recipe(
    id: 'recipe_3',
    title: 'Chocolate Lava Cake',
    category: 'Dessert',
    imageUrl:
        'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=1200&q=80',
    minutes: 25,
    servings: 4,
    difficulty: 'Medium',
    rating: 4.7,
  ),
  Recipe(
    id: 'recipe_4',
    title: 'Green Smoothie Bowl',
    category: 'Healthy',
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=1200&q=80',
    minutes: 10,
    servings: 1,
    difficulty: 'Easy',
    rating: 4.6,
  ),
  Recipe(
    id: 'recipe_5',
    title: 'Avocado Toast Breakfast',
    category: 'Breakfast',
    imageUrl:
        'https://images.unsplash.com/photo-1505253213900-3275fe1517dc?auto=format&fit=crop&w=1200&q=80',
    minutes: 15,
    servings: 1,
    difficulty: 'Easy',
    rating: 4.5,
  ),
];
