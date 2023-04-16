import 'package:flutter/material.dart';
import 'package:flutter_meals_app/widgets/drawer_item.dart';

class MainDrawer extends StatelessWidget {
  final void Function(String identifier) onSelectScreen;

  const MainDrawer({
    super.key,
    required this.onSelectScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.fastfood_rounded,
                  size: 36,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  'Cooking up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          DrawerItem(
            icon: Icons.restaurant_rounded,
            title: 'Meals',
            screenId: 'meals',
            onSelectScreen: onSelectScreen,
          ),
          DrawerItem(
            icon: Icons.tune_rounded,
            title: 'Filters',
            screenId: 'filters',
            onSelectScreen: onSelectScreen,
          ),
        ],
      ),
    );
  }
}
