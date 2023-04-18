import 'package:flutter/material.dart';
import 'package:flutter_meals_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterItem extends ConsumerWidget {
  final String title;
  final String subTitle;
  final Filter filter;

  const FilterItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.filter,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return SwitchListTile.adaptive(
      value: activeFilters[filter]!,
      onChanged: (isActive) {
        ref.read(filtersProvider.notifier).setFilter(filter, isActive);
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: 18,
            ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      activeColor: Theme.of(context).colorScheme.primary,
      contentPadding: const EdgeInsets.only(
        left: 16,
        right: 10,
      ),
    );
  }
}
