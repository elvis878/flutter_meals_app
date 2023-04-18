import 'package:flutter_meals_app/models/meal_model.dart';
import 'package:flutter_meals_app/providers/filters_provider.dart';
import 'package:flutter_meals_app/providers/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredMealsProvider = Provider<List<Meal>>((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);

  return meals.where((Meal meal) {
    return (activeFilters[Filter.glutenFree]! && meal.isGlutenFree) ||
        (activeFilters[Filter.lactoseFree]! && meal.isLactoseFree) ||
        (activeFilters[Filter.vegetarian]! && meal.isVegetarian) ||
        (activeFilters[Filter.vegan]! && meal.isVegan) ||
        (activeFilters[Filter.keto]! && meal.isKeto) ||
        (activeFilters[Filter.paleo]! && meal.isPaleo);
  }).toList();
});
