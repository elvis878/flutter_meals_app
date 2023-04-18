import 'package:flutter_meals_app/data/dummy_data.dart';
import 'package:flutter_meals_app/models/meal_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealsProvider = Provider<List<Meal>>((ref) {
  return dummyMeals;
});
