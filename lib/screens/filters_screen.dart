import 'package:flutter/material.dart';
import 'package:flutter_meals_app/widgets/filter_item.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
  keto,
  paleo,
}

class FiltersScreen extends StatefulWidget {
  final Map<Filter, bool> currentFilterSet;
  const FiltersScreen({
    super.key,
    required this.currentFilterSet,
  });

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  Map<Filter, bool> _filterSet = {
    Filter.glutenFree: true,
    Filter.lactoseFree: true,
    Filter.vegetarian: true,
    Filter.vegan: true,
    Filter.keto: true,
    Filter.paleo: true,
  };

  void _onFilterToggle(Filter filter, bool isChecked) {
    setState(() {
      _filterSet[filter] = isChecked;
    });
  }

  @override
  void initState() {
    super.initState();
    _filterSet = {
      Filter.glutenFree: widget.currentFilterSet[Filter.glutenFree]!,
      Filter.lactoseFree: widget.currentFilterSet[Filter.lactoseFree]!,
      Filter.vegetarian: widget.currentFilterSet[Filter.vegetarian]!,
      Filter.vegan: widget.currentFilterSet[Filter.vegan]!,
      Filter.keto: widget.currentFilterSet[Filter.keto]!,
      Filter.paleo: widget.currentFilterSet[Filter.paleo]!,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop(_filterSet);
          return false;
        },
        child: Column(
          children: <Widget>[
            FilterItem(
              title: 'Gluten-free',
              subTitle: 'Include gluten-free meals.',
              switchValue: _filterSet[Filter.glutenFree]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.glutenFree, isChecked);
              },
            ),
            FilterItem(
              title: 'Lactose-free',
              subTitle: 'Include lactose-free meals.',
              switchValue: _filterSet[Filter.lactoseFree]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.lactoseFree, isChecked);
              },
            ),
            FilterItem(
              title: 'Vegetarian',
              subTitle: 'Include vegetarian meals.',
              switchValue: _filterSet[Filter.vegetarian]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.vegetarian, isChecked);
              },
            ),
            FilterItem(
              title: 'Vegan',
              subTitle: 'Include vegan meals.',
              switchValue: _filterSet[Filter.vegan]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.vegan, isChecked);
              },
            ),
            FilterItem(
              title: 'Ketogenic',
              subTitle: 'Include ketogenic meals.',
              switchValue: _filterSet[Filter.keto]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.keto, isChecked);
              },
            ),
            FilterItem(
              title: 'Paleo',
              subTitle: 'Include paleo meals.',
              switchValue: _filterSet[Filter.paleo]!,
              onFilterToggle: (isChecked) {
                _onFilterToggle(Filter.paleo, isChecked);
              },
            ),
          ],
        ),
      ),
    );
  }
}
