import 'package:flutter/material.dart';
import 'package:flutter_meals_app/providers/filters_provider.dart';
import 'package:flutter_meals_app/widgets/filter_item.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: Column(
        children: const <Widget>[
          FilterItem(
            title: 'Gluten-free',
            subTitle: 'Include gluten-free meals.',
            filter: Filter.glutenFree,
          ),
          FilterItem(
            title: 'Lactose-free',
            subTitle: 'Include lactose-free meals.',
            filter: Filter.lactoseFree,
          ),
          FilterItem(
            title: 'Vegetarian',
            subTitle: 'Include vegetarian meals.',
            filter: Filter.vegetarian,
          ),
          FilterItem(
            title: 'Vegan',
            subTitle: 'Include vegan meals.',
            filter: Filter.vegan,
          ),
          FilterItem(
            title: 'Ketogenic',
            subTitle: 'Include ketogenic meals.',
            filter: Filter.keto,
          ),
          FilterItem(
            title: 'Paleo',
            subTitle: 'Include paleo meals.',
            filter: Filter.paleo,
          ),
        ],
      ),
    );
  }
}
