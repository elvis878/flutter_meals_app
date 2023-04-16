import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool switchValue;
  final void Function(bool isChecked) onFilterToggle;

  const FilterItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.switchValue,
    required this.onFilterToggle,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      value: switchValue,
      onChanged: onFilterToggle,
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
