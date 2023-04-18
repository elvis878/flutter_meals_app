import 'package:flutter/material.dart';
import 'package:flutter_meals_app/models/meal_model.dart';
import 'package:flutter_meals_app/screens/meal_details_screen.dart';
import 'package:flutter_meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  final String? title;
  final List<Meal> meals;

  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealDetailsScreen(
          meal: meal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.no_food_rounded,
            size: 64,
            color: Theme.of(context).textTheme.bodySmall!.color,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Uh oh... nothing in here!',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Try selecting a different category.',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
              meal: meals[index],
              onSelectMeal: (meal) {
                selectMeal(
                  context,
                  meals[index],
                );
              });
        },
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
